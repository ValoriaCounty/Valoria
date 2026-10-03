
const express = require('express');
const cors = require('cors');
const crypto = require('crypto');
const mysql = require('mysql2/promise');
const nodemailer = require('nodemailer');

const app = express();
app.use(express.json({limit:'1mb'}));

const PORT = Number(process.env.PORT || 3000);
const ADMIN_EMAIL = (process.env.ADMIN_EMAIL || 'Alone@admin.com').toLowerCase();

const pool = mysql.createPool({
  host: process.env.DB_HOST || '127.0.0.1',
  port: Number(process.env.DB_PORT || 3306),
  database: process.env.DB_NAME || 'play',
  user: process.env.DB_USER || 'root',
  password: process.env.DB_PASSWORD || '',
  waitForConnections: true,
  connectionLimit: 10,
  charset: 'utf8mb4'
});

const sessions = new Map();

function hashPassword(value){
  return crypto.createHash('sha256').update(String(value)).digest('hex');
}
function authAdmin(req,res,next){
  const h = req.headers.authorization || '';
  const token = h.startsWith('Bearer ') ? h.slice(7) : '';
  const s = sessions.get(token);
  if(!s || s.role !== 'admin') return res.status(401).json({message:'غير مصرح'});
  req.admin = s;
  next();
}
async function sendAdminMail(subject, html){
  if(!process.env.SMTP_HOST || !process.env.SMTP_USER || !process.env.SMTP_PASS) return false;
  const transporter = nodemailer.createTransport({
    host: process.env.SMTP_HOST,
    port: Number(process.env.SMTP_PORT || 587),
    secure: String(process.env.SMTP_SECURE || 'false') === 'true',
    auth: {user: process.env.SMTP_USER, pass: process.env.SMTP_PASS}
  });
  await transporter.sendMail({
    from: process.env.SMTP_FROM || process.env.SMTP_USER,
    to: ADMIN_EMAIL,
    subject,
    html
  });
  return true;
}

app.get('/api/health', async (req,res)=>{
  try{
    await pool.query('SELECT 1');
    res.json({ok:true,database:true,service:'VALORIA STORE',time:new Date().toISOString()});
  }catch(e){
    res.status(503).json({ok:false,database:false,message:'قاعدة البيانات غير متصلة'});
  }
});

app.post('/api/login',async(req,res)=>{
  const {email,password}=req.body||{};
  if(!email||!password) return res.status(400).json({message:'البيانات ناقصة'});
  try{
    const [rows]=await pool.execute(
      'SELECT id,email,role FROM valoria_admins WHERE LOWER(email)=LOWER(?) AND password_sha256=? AND enabled=1 LIMIT 1',
      [email,hashPassword(password)]
    );
    if(rows.length){
      const token=crypto.randomBytes(32).toString('hex');
      sessions.set(token,{role:rows[0].role,adminId:rows[0].id,email:rows[0].email,createdAt:Date.now()});
      return res.json({message:'تم تسجيل دخول الأدمن',role:rows[0].role,token});
    }
  }catch(e){
    console.error(e);
    return res.status(500).json({message:'قاعدة بيانات الأدمن غير جاهزة — شغّل VALORIA_DATABASE_PATCH.sql'});
  }
  return res.status(401).json({message:'الإيميل أو كلمة المرور غير صحيحة'});
});

/* Verify that the player supplied the SAME email + account name
   that already exist in the MTA accounts table. */
app.post('/api/account/verify',async(req,res)=>{
  try{
    const {email,mtaAccount}=req.body||{};
    if(!email||!mtaAccount) return res.status(400).json({message:'الإيميل واسم حساب MTA مطلوبان'});
    const [rows]=await pool.execute(
      'SELECT id,username,email FROM accounts WHERE LOWER(email)=LOWER(?) AND LOWER(username)=LOWER(?) LIMIT 1',
      [email,mtaAccount]
    );
    if(!rows.length) return res.status(404).json({message:'الإيميل واسم حساب MTA غير متطابقين مع حساب اللعبة'});
    const account=rows[0];
    const [chars]=await pool.execute(
      'SELECT id,charactername FROM characters WHERE account=? AND active=1 ORDER BY id ASC',
      [account.id]
    );
    res.json({ok:true,account:{id:account.id,username:account.username,email:account.email},characters:chars});
  }catch(e){
    console.error(e); res.status(500).json({message:'خطأ في قاعدة البيانات'});
  }
});

app.post('/api/orders',async(req,res)=>{
  const conn=await pool.getConnection();
  try{
    const {email,mtaAccount,characterId,paymentMethod,transactionId,products}=req.body||{};
    if(!email||!mtaAccount||!characterId||!paymentMethod||!transactionId||!Array.isArray(products)||!products.length)
      return res.status(400).json({message:'بيانات الطلب ناقصة'});

    const [accRows]=await conn.execute(
      'SELECT id,username,email FROM accounts WHERE LOWER(email)=LOWER(?) AND LOWER(username)=LOWER(?) LIMIT 1',
      [email,mtaAccount]
    );
    if(!accRows.length) return res.status(400).json({message:'الإيميل واسم الحساب غير مطابقين لحساب اللعبة'});
    const account=accRows[0];

    const [charRows]=await conn.execute(
      'SELECT id,charactername FROM characters WHERE id=? AND account=? AND active=1 LIMIT 1',
      [characterId,account.id]
    );
    if(!charRows.length) return res.status(400).json({message:'الشخصية غير مرتبطة بحساب اللعبة'});

    const ids=products.map(p=>String(p.id));
    const placeholders=ids.map(()=>'?').join(',');
    const [dbProducts]=await conn.query(
      `SELECT product_id,name,category,price,currency,delivery_type,delivery_value,image
       FROM valoria_products WHERE enabled=1 AND product_id IN (${placeholders})`, ids
    );
    const map=new Map(dbProducts.map(p=>[p.product_id,p]));
    const clean=[];
    let total=0;
    for(const p of products){
      const x=map.get(String(p.id));
      if(!x) return res.status(400).json({message:'يوجد منتج غير صالح في الطلب'});
      clean.push({
        id:x.product_id,name:x.name,category:x.category,
        price:Number(x.price),currency:x.currency,
        delivery_type:x.delivery_type,delivery_value:x.delivery_value
      });
      total+=Number(x.price);
    }

    const orderId='VAL-'+Date.now().toString(36).toUpperCase()+'-'+crypto.randomBytes(3).toString('hex').toUpperCase();
    await conn.execute(
      `INSERT INTO valoria_orders
       (order_id,account_id,character_id,account_name,character_name,website_email,payment_method,transaction_id,items_json,total_amount,currency,status)
       VALUES (?,?,?,?,?,?,?,?,?,?,?,'PENDING')`,
      [orderId,account.id,charRows[0].id,account.username,charRows[0].charactername,email,paymentMethod,transactionId,JSON.stringify(clean),total,'USD']
    );
    await conn.execute(
      'INSERT INTO valoria_order_logs(order_id,action,actor,details) VALUES(?,?,?,?)',
      [orderId,'CREATED',email,`Payment=${paymentMethod}; Transaction=${transactionId}`]
    );
    await conn.release();

    sendAdminMail(
      `VALORIA — طلب شراء جديد ${orderId}`,
      `<h2>طلب شراء جديد</h2><p><b>الطلب:</b> ${orderId}</p><p><b>الحساب:</b> ${account.username}</p><p><b>الإيميل:</b> ${email}</p><p><b>طريقة الدفع:</b> ${paymentMethod}</p><p><b>رقم العملية:</b> ${transactionId}</p><p><b>الإجمالي:</b> ${total} USD</p>`
    ).catch(err=>console.error('SMTP:',err.message));

    res.json({ok:true,orderId,status:'PENDING',message:'تم إرسال الطلب وهو قيد مراجعة الإدارة'});
  }catch(e){
    try{conn.release()}catch{}
    console.error(e);
    res.status(500).json({message:'تعذر إنشاء الطلب'});
  }
});

app.get('/api/admin/orders',authAdmin,async(req,res)=>{
  try{
    const [rows]=await pool.query('SELECT * FROM valoria_orders ORDER BY id DESC LIMIT 500');
    res.json(rows);
  }catch(e){res.status(500).json({message:'خطأ في قاعدة البيانات'});}
});

app.post('/api/admin/orders/:orderId/status',authAdmin,async(req,res)=>{
  const {status,note}=req.body||{};
  if(!['APPROVED','REJECTED'].includes(status)) return res.status(400).json({message:'حالة غير صحيحة'});
  const conn=await pool.getConnection();
  try{
    const [rows]=await conn.execute('SELECT * FROM valoria_orders WHERE order_id=? LIMIT 1',[req.params.orderId]);
    if(!rows.length) return res.status(404).json({message:'الطلب غير موجود'});
    const o=rows[0];
    if(o.status!=='PENDING') return res.status(409).json({message:'الطلب تمت معالجته من قبل'});
    await conn.beginTransaction();
    await conn.execute(
      `UPDATE valoria_orders SET status=?,admin_note=?,approved_by=?,approved_at=IF(?='APPROVED',NOW(),NULL)
       WHERE order_id=?`,
      [status,note||null,req.admin.email,status,req.params.orderId]
    );
    await conn.execute(
      'INSERT INTO valoria_order_logs(order_id,action,actor,details) VALUES(?,?,?,?)',
      [req.params.orderId,status,req.admin.email,note||'']
    );
    await conn.commit();
    res.json({ok:true,status});
  }catch(e){
    try{await conn.rollback()}catch{}
    res.status(500).json({message:'تعذر تحديث الطلب'});
  }finally{conn.release();}
});

app.listen(PORT,()=>console.log(`VALORIA backend running on port ${PORT}`));
