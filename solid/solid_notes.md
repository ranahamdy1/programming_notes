SOLID

1️⃣ S => Single responsibility 
- class should solve only one problem
  
2️⃣ O => Open closed principle 
- class should Open for extension closed for modification
 
3️⃣ L => liskov's substitution
- لو الأب  مش موجود الابن هيقوم بالدور مكانه

4️⃣ I => Interface segregation 
- بقسم ال interface الي interfaces صغيره محدده

5️⃣ D => Dependency Inversion

كل من ال high و low class لا يعتمدون علي بعض بل يعتمدون علي abstraction


- *Single responsibility (SRP) :* يتعلق بتقسيم المسؤوليات داخل الكلاسات بحيث تكون كل وحدة مسؤولة عن مهمة واحدة فقط.
- *Interface segregation  (ISP) :*

-يتعلق بتقسيم الواجهات (Interfaces) بحيث تكون كل واجهة مسؤولة عن مجموعة محددة من الوظائف، وذلك لتجنب إرغام الكلاسات على تنفيذ وظائف لا تحتاجها.
