void main() {
  var human = Student();
}

abstract class Human {
  String? name;
  //abstract method
   void drink();
   void eat();
}
class Student extends Human {
  @override
  void drink() {
    print('student drink');
  }

  @override
  void eat() {}
}
