# 📊 Data Analyst Modern Portfolio Website - Ahmed Sherif

بورتفوليو احترافي، عصري، وسريع مصمم خصيصاً لـ **Data Analysts & Business Intelligence Specialists**، لعرض المشاريع والمهارات ولوحات المعلومات التفاعلية (Dashboards) بأعلى معايير التصميم العالمي.

---

## 🌟 مميزات البورتفوليو (Key Features)

1. **Modern & Clean Design**:
   - تصميم زجاجي عصري (Glassmorphism) مريح جداً للعين بألوان الداكنة والفاتحة (Slate, Indigo, Cyan, Emerald).
   - زر تبديل تلقائي بين **Dark Mode** و **Light Mode** مع حفظ الاختيار.
   - متوافق تماماً مع جميع الشاشات والهواتف (100% Fully Responsive).

2. **الأقسام الرئيسية (Core Sections)**:
   - **Hero Section**: الاسم، المسمى الوظيفي Data Analyst، نبذة سريعة، روابط مباشرة لـ LinkedIn و GitHub، وكارت تفاعلي يعرض مقاييس الأداء مع رسم بياني حي (Live Sparkline).
   - **About Me**: شغفك بتحليل البيانات، منهجية العمل، وإحصائيات سريعة (Dashboards built, Records processed).
   - **Skills & Toolkit**: تصنيف احترافي للأدوات الخمسة الأساسية:
     - 📗 **Microsoft Excel**: Power Query, Pivot Tables, XLOOKUP, Data Modeling.
     - 🐬 **SQL**: PostgreSQL, MySQL, CTEs, Window Functions, Joins.
     - 🐍 **Python**: Pandas, NumPy, Matplotlib, Seaborn.
     - 📊 **Power BI**: DAX, Star Schema, Power BI Service.
     - 📈 **Tableau**: LOD Expressions, Calculated Fields, Storyboards.
   - **Projects Grid**: عرض المشاريع في كروت أنيقة مع فلاتر حسب الأداة (All, Power BI, Tableau, Python, SQL). كل كارت يحتوي على:
     - اسم المشروع ووصف المشكلة ومقاييس الأثر التجاري (Business Impact).
     - شارات الأدوات المستخدمة (Badges).
     - رابط كود المشروع على **GitHub**.
     - رابط الـ **Live Dashboard** (Power BI Service أو Tableau Public).
   - **Live Analytics Demo**: ويدجت تفاعلي حي مبني بـ `Chart.js` يمكن للزائر والـ Recruiter التفاعل معه لمشاهدة تحليلات المبيعات ونسب الاحتفاظ بالعملاء (Cohort Churn).
   - **Workflow / Process**: الخطوات الأربع لتحليل البيانات من فهم المشكلة حتى تقديم التوصيات.
   - **Contact Section**: وسائل التواصل المباشرة (Email, LinkedIn, GitHub, Location) + نموذج مراسلة مباشر مع إشعارات تفاعلية.

---

## 📁 هيكل الملفات (File Structure)

```
data-analyst-portfolio/
│
├── index.html        # الصفحة الرئيسية الشاملة لجميع الأقسام
├── style.css         # ملف التنسيقات العصرية مع المتغيرات ودعم الوضع الليلي والنهاري
├── script.js         # كود التفاعل: الفلاتر، الرسوم البيانية، التبديل بين الثيمات، نموذج التواصل
└── README.md         # دليل التخصيص والتشغيل والنشر
```

---

## 🚀 كيفية تشغيل وتصفح الموقع محلياً (How to Run Locally)

1. **الطريقة الأسهل**:
   - اذهب إلى المجلد `C:\Users\ASH\.gemini\antigravity\scratch\data-analyst-portfolio` واضغط دبل كليك على ملف `index.html`، وسيفتح مباشرة في متصفحك (Chrome / Edge / Firefox).

2. **باستخدام Live Server (موصى به أثناء التعديل)**:
   - في VS Code أو محرر الأكواد المفضل لديك، اضغط كليك يمين على `index.html` واختر **Open with Live Server**.
   - أو عبر التيرمينال باستخدام Python:
     ```bash
     python -m http.server 3000
     ```
     ثم افتح `http://localhost:3000` في المتصفح.

---

## ✏️ خطوات تخصيص بياناتك بسهولة (Customization Guide)

افتح ملف `index.html` وعدّل التالي:

### 1. الاسم والمسمى الوظيفي
ابحث عن `[Your Name]` واستبدله باسمك (مثلاً: `Ahmed Hassan` أو `عمر خالد`).

### 2. روابط التواصل (LinkedIn & GitHub & Email)
ابحث عن:
- `https://linkedin.com/in/yourusername` -> ضع رابط حسابك على لينكد إن.
- `https://github.com/yourusername` -> ضع رابط حسابك على جيت هب.
- `your.email@example.com` -> ضع بريدك الإلكتروني الحقيقي.
- `https://public.tableau.com` -> ضع رابط حسابك على Tableau Public (اختياري).

### 3. السيرة الذاتية (Resume / CV)
- ضع ملف الـ PDF الخاص بالـ CV داخل المجلد وسمّه مثلاً `Resume-Data-Analyst.pdf`.
- في ملف `index.html`، ابحث عن زر الـ `Resume`:
  ```html
  <a href="Resume-Data-Analyst.pdf" download class="btn btn-outline cv-btn">
  ```

### 4. تعديل المشاريع وإضافة مشاريعك الخاصة
ستجد في قسم `<section class="section projects" id="projects">` ستة مشاريع نموذجية جاهزة ومكتوبة بعناية. لتعديل مشروع:
- عدّل عنوان المشروع `<h3 class="project-title">`
- عدّل نص ملخص المشروع والأثر التجاري في `project-impact-box`.
- حدّث الروابط:
  - زر الـ GitHub: ضع رابط المستودع الخاص بك.
  - زر الـ Live Dashboard: ضع رابط التقرير التفاعلي على Power BI Service أو Tableau Public أو Kaggle Notebook.
- إذا كان لديك صور أو سكرين شوتس من داشبوردك الحقيقية، يمكنك وضعها في المجلد واستبدال البانر بصورة:
  ```html
  <img src="dashboard-preview.png" alt="Sales Dashboard" class="project-img" />
  ```

### 5. تفعيل استلام رسائل نموذج الاتصال عبر بريدك (Contact Form)
النموذج يعمل حالياً بشكل تفاعلي سريع. لتستلم الرسائل مباشرة إلى بريدك الإلكتروني مجاناً:
- سجّل حساباً مجانياً على [Formspree.io](https://formspree.io).
- أنشئ Form جديد وانسخ الـ Form ID.
- في `index.html`، عدّل وسم `<form>` إلى:
  ```html
  <form action="https://formspree.io/f/YOUR_FORM_ID" method="POST" id="contactForm" class="contact-form glass-panel">
  ```

---

## 🌐 كيفية نشر موقعك مجاناً على الإنترنت (Free Deployment)

### الخيار 1: GitHub Pages (الأفضل لـ Data Analysts)
1. أنشئ مستودعاً جديداً على GitHub باسم: `yourusername.github.io` أو `data-portfolio`.
2. ارفع ملفات المجلد (`index.html`, `style.css`, `script.js`).
3. اذهب إلى **Settings** > **Pages** > اختر الفرع **main** واضغط **Save**.
4. خلال دقيقة سيكون موقعك متاحاً للعالم على رابط مجاني وسريع جداً!

### الخيار 2: Netlify Drop
1. ادخل على [Netlify Drop](https://app.netlify.com/drop).
2. اسحب فولدر `data-analyst-portfolio` وأفلته في الصفحة.
3. مبروك! موقعك أصبح أونلاين فوراً مع رابط HTTPS مجاني ودومين يمكنك تغييره.

---

> 💡 **نصيحة**: نوصي بتعيين المجلد `C:\Users\ASH\.gemini\antigravity\scratch\data-analyst-portfolio` كـ **Active Workspace** لمتابعة تطوير الموقع وإضافة المزيد من الصفحات والمشاريع في أي وقت.
