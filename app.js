const all = window.VALORIA_PRODUCTS || [];
let selected = 'الكل';
let cart = JSON.parse(localStorage.getItem('VALORIA_CART') || '[]');
const API = 'http://135.125.190.186:3055';

const categoryOrder = ['الكل','مركبات','خدمات','رصيد','عضويات'];
const present = [...new Set(all.map(p=>p.category).filter(Boolean))];
const categories = categoryOrder.filter(c=>c==='الكل'||present.includes(c)).concat(present.filter(c=>!categoryOrder.includes(c)));
const cats=document.getElementById('cats'), grid=document.getElementById('grid'), search=document.getElementById('search'), title=document.getElementById('title');

function drawCats(){
 cats.innerHTML='';
 categories.forEach(category=>{
  const b=document.createElement('button'); b.className='cat'+(category===selected?' active':''); b.type='button'; b.textContent=category;
  b.onclick=()=>{selected=category;drawCats();render();}; cats.appendChild(b);
 });
}
function money(n){return 'USD '+Number(n||0).toFixed(2).replace('.00','');}
function saveCart(){localStorage.setItem('VALORIA_CART',JSON.stringify(cart));document.getElementById('count').textContent=cart.length;}
function renderCart(){
 const box=document.getElementById('cartItems'), total=cart.reduce((s,p)=>s+Number(p.price||0),0);
 document.getElementById('cartTotal').textContent=money(total);
 box.innerHTML=cart.length?cart.map((p,i)=>`<div class="cart-row"><div><b>${p.name}</b><small>${p.category}</small></div><strong>${money(p.price)}</strong><button onclick="removeCart(${i})">حذف</button></div>`).join(''):'<div class="empty">السلة فارغة.</div>';
}
window.removeCart=i=>{cart.splice(i,1);saveCart();renderCart();};
window.addToCart=id=>{const p=all.find(x=>x.id===id);if(!p)return;cart.push(p);saveCart();renderCart();document.getElementById('cartModal').classList.remove('hidden');};
function render(){
 const q=search.value.trim().toLocaleLowerCase();
 const products=all.filter(p=>(selected==='الكل'||p.category===selected)&&String(p.name||'').toLocaleLowerCase().includes(q));
 title.textContent=selected==='الكل'?'كل منتجات ڤالوريا':selected; document.getElementById('result-count').textContent=products.length; grid.innerHTML='';
 products.forEach(p=>{
  const card=document.createElement('article'); card.className='product';
  const pic=document.createElement('div'); pic.className='pic';
  if(p.image){const img=document.createElement('img');img.src=p.image;img.alt=p.name;img.loading='lazy';img.onerror=()=>{img.remove();pic.classList.add('no-image');pic.textContent='VALORIA';};pic.appendChild(img);} else {pic.classList.add('no-image');pic.textContent='VALORIA';}
  const cat=document.createElement('div');cat.className='product-category';cat.textContent=p.category||'منتجات';
  const name=document.createElement('h2');name.className='name';name.textContent=p.name||'منتج';
  const price=document.createElement('div');price.className='price';price.textContent=money(p.price);
  const buy=document.createElement('button');buy.className='buy';buy.type='button';buy.textContent='إضافة للسلة';buy.onclick=()=>window.addToCart(p.id);
  card.append(pic,cat,name,price,buy);grid.appendChild(card);
 });
 if(!products.length){grid.innerHTML='<div class="empty">مفيش منتجات في القسم ده بالبحث الحالي.</div>';}
}

drawCats();render();saveCart();search.addEventListener('input',render);

document.querySelector('.cart').onclick=()=>{renderCart();document.getElementById('cartModal').classList.remove('hidden');};
document.getElementById('closeCart').onclick=()=>document.getElementById('cartModal').classList.add('hidden');
document.getElementById('closeCheckout').onclick=()=>document.getElementById('checkoutModal').classList.add('hidden');
document.getElementById('checkoutBtn').onclick=()=>{if(!cart.length)return alert('السلة فارغة');document.getElementById('cartModal').classList.add('hidden');document.getElementById('checkoutModal').classList.remove('hidden');};


document.getElementById('verifyAccountBtn').onclick=async ()=>{
 const email=document.getElementById('buyerEmail').value.trim();
 const mtaAccount=document.getElementById('mtaAccount').value.trim();
 const sel=document.getElementById('characterId');
 if(!email||!mtaAccount) return alert('اكتب الإيميل واسم حساب MTA أولاً');
 try{
   const r=await fetch(API+'/api/account/verify',{method:'POST',headers:{'Content-Type':'application/json'},body:JSON.stringify({email,mtaAccount})});
   const d=await r.json();
   if(!r.ok) throw new Error(d.message||'تعذر التحقق');
   sel.innerHTML='<option value="">اختار الشخصية</option>'+d.characters.map(c=>`<option value="${c.id}">${c.charactername}</option>`).join('');
   sel.disabled=false;
   document.getElementById('checkoutMsg').textContent='✅ تم التحقق من حساب اللعبة.';
 }catch(err){sel.innerHTML='<option value="">فشل التحقق</option>';sel.disabled=true;document.getElementById('checkoutMsg').textContent='❌ '+err.message;}
};

document.getElementById('checkoutForm').onsubmit=async e=>{
 e.preventDefault();
 const data={email:buyerEmail.value.trim(),mtaAccount:mtaAccount.value.trim(),characterId:characterId.value,paymentMethod:paymentMethod.value,transactionId:transactionId.value.trim(),products:cart.map(p=>({id:p.id,name:p.name,price:p.price})),total:cart.reduce((s,p)=>s+Number(p.price||0),0)};
 const msg=document.getElementById('checkoutMsg');
 try{const r=await fetch(API+'/api/orders',{method:'POST',headers:{'Content-Type':'application/json'},body:JSON.stringify(data)});const d=await r.json();if(!r.ok)throw new Error(d.message||'خطأ');msg.textContent='✅ تم إرسال طلبك بنجاح. رقم الطلب: '+d.order.id;cart=[];saveCart();renderCart();}
 catch(err){msg.textContent='❌ لا يمكن إرسال الطلب الآن. تأكد أن الـBackend شغال وأن VALORIA_API مضبوط.';}
};
