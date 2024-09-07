class Bird {
  void eat() {
    print("bird is eating");
  }
}

// Class 'FlyingBirds' extends 'Bird' to represent birds that can fly.
// Inherits the 'eat' method from 'Bird' and adds additional behavior for flying.
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
//so child Class 'FlyingBirds' can do what parent class 'Bird' do.

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
