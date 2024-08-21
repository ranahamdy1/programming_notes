abstract class Animal {
  // Abstract method to be overridden by subclasses
  void eat();
}

class Birds extends Animal {
  // Overriding the eat method in the Animal class
  //Polymorphism
  @override
  void eat() {
    print("birds eat");
  }
}

class Lions extends Animal {
  // Overriding the eat method in the Animal class
  //Polymorphism
  @override
  void eat() {
    print("lions eat");
  }
}

void main() {
  Birds birds = Birds();
  //Polymorphism
  birds.eat();  // Output: birds eat

  //Polymorphism
  Lions lions = Lions();
  lions.eat();  // Output: lions eat
}
