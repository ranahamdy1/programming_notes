abstract class Animal {
  String _name;
  Animal(this._name);
  // Abstract method
  void eat();
  // Abstract method
  void drink();

  // Setter
  set setName(String name) {
    _name = name;
  }
  // Getter
  String get getName {
    return _name;
  }
}

class Birds extends Animal {
  Birds(super.name);

  @override
  void eat() {
    print("birds eat");
  }

  @override
  void drink() {
    print('bird drink');
  }
}

void main() {
  Birds birds = Birds("birds name");
  String birdsName = birds.getName;
  print(birdsName);
  birds.eat();

  // Cannot instantiate an abstract class
  // Animal object = Animal('omar');
  // Accessing the private variable through the getter
  // String lionName = object.name;
  // print(lionName);
  // object.eat();
}
