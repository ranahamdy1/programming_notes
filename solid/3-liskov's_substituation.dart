class Bird {
  void eat(){
    print("bird is eating");
  }
}

class FlyingBirds extends Bird{
  void fly() {
    print("bird is flying");
  }
}

class Penguin extends Bird {
  @override
  void eat(){
    print("penguin is eating");
  }
}

class Swan extends FlyingBirds {
  @override
  void fly() {
    print("Swan is flying");
  }

  @override
  void eat(){
    print("Swan is eating");
  }
}
