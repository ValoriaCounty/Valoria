# VALORIA STORE — Database Linked

تم ربط الموقع بقاعدة بيانات `play` التي أرسلتها.

## ماذا أصبح حقيقيًا؟
- التحقق من أن إيميل اللاعب + اسم حساب MTA موجودان ومتطابقان داخل `accounts`.
- اختيار الشخصية من `characters`.
- إنشاء الطلب داخل MySQL في `valoria_orders`.
- الأدمن يسجل الدخول من `/admin.html`.
- الأدمن يوافق/يرفض الطلب.
- عند APPROVED، Resource الـMTA يقرأ الطلب من نفس قاعدة البيانات.
- الرصيد (credits) يمكن تسليمه تلقائيًا.
- السيارات والخدمات لها جدول Mapping مستقل حتى لا نخمن ID سيارة أو وظيفة خدمة ونمنح لاعبًا شيئًا خاطئًا.

## تشغيل قاعدة البيانات
استورد `VALORIA_DATABASE_PATCH.sql` بعد `play.sql`.
أو استخدم النسخة الكاملة `play_VALORIA_LINKED.sql`.

## تشغيل Backend على VPS
داخل `backend`:
1. `npm install`
2. ضع كلمة مرور MySQL الحقيقية في `ecosystem.config.cjs` أو متغيرات البيئة.
3. `pm2 start ecosystem.config.cjs`
4. `pm2 save`

لو تريد HTTPS للموقع، اجعل الدومين/النطاق يشير للـVPS واعمل reverse proxy (Nginx أو Apache) إلى `127.0.0.1:3000`.

## لوحة الأدمن
بعد تشغيل الـBackend:
`https://YOUR-BACKEND-DOMAIN/admin.html`

إيميل الأدمن:
`Alone@admin.com`

كلمة مرور الأدمن: `762002` — محفوظة في جدول `valoria_admins` داخل قاعدة `play` كـ SHA-256.
لا تضعها داخل GitHub أو Frontend.

## تشغيل Resource الـMTA
انسخ `backend/mta-resource` إلى:
`server/mods/deathmatch/resources/valoria-store`

عدّل `config.lua` وضع كلمة مرور MySQL الحقيقية، ثم:
`start valoria-store`

## مهم بخصوص التسليم
الـDB تحتوي على جداول اللعبة الحالية. لذلك لم أعدل جداول `accounts` أو `vehicles` بطريقة قد تكسر السيرفر.
أضفت جداول `valoria_*` مستقلة ومربوطة بحساب اللاعب.
المنتجات التي هي رصيد موقع قابلة للتسليم تلقائيًا.
المنتجات الأخرى تحتاج Mapping مؤكد إلى `vehicles_shop.id` أو منطق الخدمة الموجود في سكربتاتك. لن أخمن هذه القيم لأن الخطأ فيها قد يعطي اللاعب سيارة/صلاحية غير صحيحة.

## البريد
الإيميل إلى `Alone@admin.com` يحتاج SMTP حقيقي في متغيرات:
SMTP_HOST / SMTP_USER / SMTP_PASS.
كلمة مرور الأدمن `762002` خاصة بلوحة المتجر وليست كلمة مرور صندوق البريد.
