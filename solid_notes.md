SOLID

1️⃣ S => Single responsibility 
- class should solve only one problem

مثلا لو عندى مستشفى المستشفى دى فيها دكتور واحد بيعالج كل الامراض ذى البرد ، الكلي ، القلب وغيره 
هل دا صح ؟؟
لا غلط لو الدكتور غاب المستشفى كلها مش هتشتغل 
طب لو جبنا دكاتره كتير كل دكتور بيعالج مرض واحد كده الصح 
فلو دكتور فيهم غاب عادى الباقى شغال 
دى نفس الفكره كل كلاس بيقوم بحاجه واحده بس .
  
2️⃣ O => Open closed principle 
- class should Open for extension closed for modification
 
3️⃣ L => liskov's substitution
- لو الأب  مش موجود الابن هيقوم بالدور مكانه

4️⃣ I => Interface segregation 
- بقسم ال interface الي interfaces صغيره محدده

5️⃣ D => Dependency Inversion

كل من ال high و low class لا يعتمدون علي بعض بل يعتمدون علي abstraction

![solid](images/solid.jpeg)

- [SOLID IN DART](https://dev.to/lionnelt/solid-principles-in-dartflutter-2g21)
- [SOLID IN FLUTTER](https://medium.com/nerd-for-tech/solid-principles-in-a-flutter-32eaf7218476)
