class Animal {
  String _name;

  Animal(this._name);

  // Method to simulate eating behavior for the Animal class
  void eat() {
    print("lion eat");
  }

  // Setter method
  set name(String name) {
    _name = name;
  }

  // Getter method
  String get name {
    return _name;
  }
}

class Birds extends Animal {
  // Constructor that calls the Animal constructor with the name argument
  Birds(super.name);

  // Overriding the eat method in the Animal class
  @override
  void eat() {
    print("birds eat");
  }
}

void main() {
  Animal object = Animal('omar');
  Birds birds = Birds("birds name");

  // Accessing the private variable through the getter
  String lionName = object.name;
  String birdsName = birds.name;

  print(lionName);
  object.eat();

  print(birdsName);
  birds.eat();
}
