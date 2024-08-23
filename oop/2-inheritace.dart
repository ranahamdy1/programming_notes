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

class Birds extends Animal{
  Birds(super.name);
//take all from Animal class //inheritance
}

void main() {
  Animal lionName = Animal('omar');
  print(lionName.getName);
  //to update name by setter and getter
  lionName.setName = "ali";
  print(lionName.getName);//getName not _name

  Birds birdsName = Birds("birds");
  print(birdsName.getName);//getName not _name
}
