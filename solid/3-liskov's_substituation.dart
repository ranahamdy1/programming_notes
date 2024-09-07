class Bird {
  void eat() {
    print("bird is eating");
  }
}

// Class 'FlyingBirds' has two methods 1-fly(), 2-eat() =>> extend it from class Bird.
class FlyingBirds extends Bird {
  void fly() {
    print("bird is flying");
  }
}

class Penguin extends Bird {
  @override
  void eat() {
    print("penguin is eating");
  }
}

// Class 'Swan' extends 'FlyingBirds' and provides specific implementations for flying and eating.
//so child Class 'FlyingBirds' can do what parent class 'Bird' do ( liskov's substitution).
class Swan extends FlyingBirds {
  @override
  void fly() {
    print("Swan is flying");
  }

  @override
  void eat() {
    print("Swan is eating");
  }
}
