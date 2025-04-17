class Human {
  String? _email;

// Setter method
  set setEmail(String email) {
    if(email.contains('@')){
      _email = email;
    }else{
      print('Invalid email: must contain "@"');
    }
    }

// Getter method
  String? get getEmail {
    return _email;
  }
}

void main() {
  Human object = Human();
  print(object.getEmail);            //null

  //to update name by setter and getter
  object.setEmail = "ali";           //null
  print(object.getEmail);            //Invalid email: must contain "@"
  object.setEmail = "ali@gmail.com"; //valid
  print(object.getEmail);            //ali@gmail.com
}
