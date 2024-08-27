abstract class Animal {
  void eat();
  void drink();
}

abstract class FlyingAnimal {
  void fly();
}

abstract class WalkingAnimal {
  void walk();
}



//this single responsibility principle of the same code
/*abstract class BasicAnimalBehavior {
  void eat();
  void drink();
}

abstract class Flyable {
  void fly();
}

abstract class Walkable {
  void walk();
}

// A bird can eat, drink, and fly
class Bird implements BasicAnimalBehavior, Flyable {
  @override
  void eat() {
    print("Bird eats");
  }

  @override
  void drink() {
    print("Bird drinks");
  }

  @override
  void fly() {
    print("Bird flies");
  }
}

// A dog can eat, drink, and walk
class Dog implements BasicAnimalBehavior, Walkable {
  @override
  void eat() {
    print("Dog eats");
  }

  @override
  void drink() {
    print("Dog drinks");
  }

  @override
  void walk() {
    print("Dog walks");
  }
}*/
