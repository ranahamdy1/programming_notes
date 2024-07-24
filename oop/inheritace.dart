void main(){
  Person p = Person();
  p.speak();
  p.walk();
}

class Human{
  void walk(){
    print("walk");
  }
}
class Person extends Human{
  void speak(){
    print("speak");
  }
  //override function
  @override
  void walk(){
    print("change words here override walk");
  }
}
