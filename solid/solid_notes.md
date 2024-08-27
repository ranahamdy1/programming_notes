SOLID

1️⃣ S => Single responsibility 
- class should solve only one problem

-ال single responsibility كل كلاس له مسئوليه واحده مش لازم ميثود واحده .
يعنى مثلا لو عندنا كلاس اسمه BasicAnimalShare كده ممكن يكون فيه داله للمشى وداله للأكل علشان دا كده مسؤليه واحده او دول حسب اسم الفانكشن حاجه واحده .

⚡ وفى مثال فى interface segregation code  يوضح الجزء دا
  
2️⃣ O => Open closed principle 
- class should Open for extension closed for modification
 
3️⃣ L => liskov's substitution
- لو الأب  مش موجود الابن هيقوم بالدور مكانه

4️⃣ I => Interface segregation 
- بقسم ال interface الي interfaces صغيره محدده

5️⃣ D => Dependency Inversion

كل من ال high و low class لا يعتمدون علي بعض بل يعتمدون علي abstraction

--------------------------------------------------------------------------------------

- *Single responsibility (SRP) :*

-يتعلق بتقسيم المسؤوليات داخل الكلاسات بحيث تكون كل وحدة مسؤولة عن مهمة واحدة فقط.

-يهتم بجعل الكلاسات صغيرة ومركزة على وظيفة واحدة

-يركز علي تقسيم المسؤوليات داخل الكلاس الواحد
- *Interface segregation  (ISP) :*

-يتعلق بتقسيم الواجهات (Interfaces) بحيث تكون كل واجهة مسؤولة عن مجموعة محددة من الوظائف، وذلك لتجنب إرغام الكلاسات على تنفيذ وظائف لا تحتاجها.

-يهتم بجعل الواجهات صغيرة ومركزة على مجموعة محددة من الوظائف

-يركز على تقسيم الواجهات ،بحيث لا تجبر الكلاسات على تنفيذ دوال أو خصائص لا تحتاجها.
