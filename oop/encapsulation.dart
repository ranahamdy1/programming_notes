class Animal {
  String _name;

  Animal(this._name);

  // Setter method
  set name(String name) {
    _name = name;
  }

  // Getter method
  String get name {
    return _name;
  }
}

void main() {
  Animal object = Animal('omar');

  // Accessing the private variable through the getter
  String lionName = object.name;
  print(lionName);
}
