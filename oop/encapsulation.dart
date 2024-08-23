class Animal {
  String? _name;
  // Setter method
  set setName(String name) {
    _name = name;
  }

  // Getter method
  String? get getName {
    return _name;
  }
}

void main() {
  Animal object = Animal();

  // Accessing the private variable through the getter
  Animal lionName = Animal();
  lionName.setName = 'lion';
  print(lionName.getName);
}
