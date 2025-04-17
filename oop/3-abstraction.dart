abstract class Human {
  String? _email;

  // Abstract method
  void eat();
  // Abstract method
  void drink();

  // Setter
  set setEmail(String email) {
    if(email.contains('@')){
      _email = email;
    }else{
      print('Invalid email: must contain "@"');
    }
  }

  // Getter
  String? get getEmail {
    return _email;
  }
}

class Man extends Human {

  @override
  void eat() {
    print("man eat");
  }

  @override
  void drink() {
    print('man drink');
  }
}

void main() {
  Man man = Man();
  man.setEmail = "ali@gmail.com";
  String? manEmail = man.getEmail;
  print(manEmail);
  man.eat();

  // Cannot instantiate an abstract class
  // Human object = Human('omar'); //false
}
