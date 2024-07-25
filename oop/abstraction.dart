void main() {
  var human = Student();
  print(human.name);
}

abstract class Human {
  String? name = 'rana';
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
