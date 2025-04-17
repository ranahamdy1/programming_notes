### 1️⃣ Encapsulation
✨Hide data.
- إخفاء البيانات داخل الكلاس ومنع التعديل المباشر عليها باستخدام private variables و getters/setters
- بنعمل فيها validation (لازم الايميل يكون فيه @ مثلا).
### 2️⃣ Inheritance
✨Relation between two class.
- الوراثة تعني إن كلاس يقدر يرث الخصائص (properties) والدوال (methods) من كلاس تاني.
- 🔁 تقدر تستخدم super للوصول لأشياء من الكلاس الأب
```
class Animal {
  void move() {
    print("Animal is moving");
  }
}

class Bird extends Animal {
  void move() {
    super.move(); // تستدعي من الأب //Animal is moving
    print("Bird is flying");    //Bird is flying
  }
}
```
- تقدر تستخدم  mixin لو عايز تورث من أكتر من كلاس.
### 3️⃣ Abstraction:
✨Hiding implementation and show only functionality.
- إخفاء التفاصيل المعقدة وإظهار الواجهة فقط باستخدام abstract classes أو interfaces
- هو إنك تخلي الكود يركز على "ماذا يفعل" بدل من "كيف يفعل"، زي إنك تقول للمبرمج فيه دالة اسمها move() لكن مش مهم دلوقتي نعرف بتعمل إيه، هنعرف التفاصيل في الكلاسات اللي هتورثها
### 4️⃣ Polymorphism
✨Display in more than one form.
- "تعدد الأشكال" يعني: نفس الدالة أو المتغير تقدر تتصرف بأشكال مختلفة حسب الكلاس اللي بتشتغل عليه.
- 1- override(run time) تعدد الكتابه        >> a نفس اسم الدالة لكن بـ عدد باراميترات مختلف أو نوعهم مختلف
- 2- overloading(compile time) تعدد القرايه >> a نفس اسم الدالة لكن ب امبليميتيشن مختلف
