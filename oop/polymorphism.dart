void main() {
  //abstract class can not be instantiated
  //Animal a1 = new Animal();
  Animal a1 = Dog();
  a1.eat();
  a1 = Cat();
  a1.eat();
}

abstract class Animal {
  //abstraction
  void eat();
}

class Dog extends Animal {
  //polymorphism
  @override
  void eat() {
    print("Dog Eating");
  }
}

class Cat extends Animal {
  @override
  //polymorphism
  void eat() {
    print("Cat Eating");
  }
}
