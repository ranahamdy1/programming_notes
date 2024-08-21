abstract class Animal {
  String _name;
  Animal(this._name);
  // Abstract method to simulate eating behavior
  void eat();
  // Abstract method to simulate drinking behavior
  void drink();

  // Setter method for _name
  set name(String name) {
    _name = name;
  }
  // Getter method for _name
  String get name {
    return _name;
  }
}

class Birds extends Animal {
  // Constructor that calls the Animal constructor with the name argument
  Birds(super.name);
  // Implementing the abstract eat method in the Animal class
  @override
  void eat() {
    print("birds eat");
  }
  // Implementing the abstract drink method in the Animal class
  @override
  void drink() {
    print('bird drink');
  }
}

void main() {
  Birds birds = Birds("birds name");
  String birdsName = birds.name;
  print(birdsName);
  birds.eat();

  // Cannot instantiate an abstract class
  // Animal object = Animal('omar');
  // Accessing the private variable through the getter
  // String lionName = object.name;
  // print(lionName);
  // object.eat();
}
