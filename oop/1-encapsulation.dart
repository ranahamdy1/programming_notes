class Animal {
  String _name;
  Animal(this._name);

// Setter method
  set setName(String name) {
    _name = name;
  }

// Getter method
  String get getName {
    return _name;
  }
}

void main() {
  Animal object = Animal('omar');
  print(object.getName);
  //to update name by setter and getter
  object.setName = "ali";
  print(object.getName);
}
