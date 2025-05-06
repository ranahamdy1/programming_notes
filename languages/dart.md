## data types:

String, int, double, num, List, dynamic, var(any type)
```
String name = "rana";
print(name.length);
var result = ['rana', 'hamdy'];
print(result.reversed.toList());
```

## ✨ var and dynamic
- var     => لو خصصت لها قيمه من الأول معدش هعرف اغيرها بعدين
- dynamic => لو خصصت لها قيمه من الأول هعرف اغيرها بعدين عادى

EX:
```
⚡
var x = 10; //لو خصصت لها قيمه من الأول معدش هعرف اغيرها بعدين
x = 2;     //true    int
x ='aa'; //false string

var y; //طالما محطيطش لها قيمه فى الاول فكده هغيرها عادى
y = 10;
y = 'aa';
```

```
⚡
dynamic z = 10; //لو خصصت لها قيمه من الأول هعرف اغيرها بعدين عادى
z = 2;    //true int
z = "aa"; //true string
```

## ✨ const and final الاتنين قيمتهم ثابته لايمكن تغيريها

```
⚡
const => compile time بيتنفذ لحظه كتابه الكود فى ال
final => run time فى ال run بيتنفذ لما اعمل
```
final:
- بمكن تعيين قيمة المتغير في وقت التشغيل (run time).
- القيمة تُحدد عند إنشاء الكائن.
- لا يمكن إعادة تعيين المتغير بعد تعيينه لأول مرة.


const:
- تُستخدم لتعريف القيم الثابتة التي تُعرف في وقت الترجمة (compile-time).
- يمكن استخدام const لإنشاء كائنات غير قابلة للتغيير بالكامل.

## ✨ Parameters types
- 1- Optional Parameters ==>>> square brackets [ ]
```
void name(String x,[String? y]){
  print("x:$x, y:$y");
}
void main(){
  name('xx'); //y is not here
}
```
- 2- Optional Named Parameters ==>>> curly braces { }
```
void name(String x,{String? y}){ //we can add required here
  print("x:$x, y:$y");
}
void main(){
  name('aa'); //Named parameters are optional by default
  name('aa',y: "aa");
}
```
- 3- Optional Default Parameters
```
void name(String x,{String? y = "rr"}){
  print("x:$x, y:$y");
}
void main(){
  name('aa'); //output = rr
  name('aa',y: "aa"); //output = aa
}
```
## ✨ Overloading

many functions in one class with the same name but with different function signatures


موافقين ف الاسم ومختلفين ف ال signature

Signature
- 1- name
- 2-num of parameters
- 3-order of them
- 4-type of Parameter

## ✨ Static
- له نسخه او قيمه واحده علي كل البرنامج
- بنادى عليه من اسم الكلاس

يعنى ل عاوزه اعرف عدد الطلاب هعمل variable static
## ✨ Method Type
### 1️⃣ Void
- معناها إن الميثود ما بترجعش أي قيمة.
- يعني بتعمل حاجة (زي الطباعة أو تغيير بيانات)، لكن مش بتديك نتيجة ترجعها تستخدمها في مكان تاني.
```
void getEat() {
  print("man eat");
}

print(man.getEat()); // ❌ ده غلط، هيطبع null
man.getEat(); // ✅ صح

```

### 2️⃣ (int, String,......)
- معناها إن الميثود بترجع قيمة.
```
int sum(int a, int b) {
  return a + b;
}

int result = sum(3, 4);
print(result); // 7
```



## ✨ nullable vs non-nullable
- علامة الاستفهام ? معناها: "المتغير ده ممكن يكون null أو فيه قيمة".
- علامة ! معناها: "أنا متأكد 100% إن القيمة مش null" حتى لو كانت القيمة أصلًا nullable
```
class User {
  String name;       // non-nullable
  String? email;     // nullable

  User(this.name);   // لازم تبعت name وقت الإنشاء
}

void main() {
  User user = User("Omar");
  print(user.name);       // ✅ "Omar"
  print(user.email);      // ✅ null (مافيهاش قيمة لسه)
}
```