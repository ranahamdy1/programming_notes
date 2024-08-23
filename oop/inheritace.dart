class Animal {
  String? _name;
  
  void eat() {
    print("lion eat");
  }
  // Setter method
  set setName(String name) {
    _name = name;
  }
  // Getter method
  String? get getName {
    return _name;
  }
}

class Birds extends Animal {
  //take all from Animal class //inheritance
}

void main() {
  Animal lionName = Animal();
  // printing through the getter
  lionName.setName = "lion";
  print(lionName.getName);
  lionName.eat();

  Birds birdsName = Birds();
  // printing through the getter
  birdsName.setName = "birds";
  print(birdsName.getName);
  birdsName.eat();
}
