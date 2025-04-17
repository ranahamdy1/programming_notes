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

class Man extends Human{
//take all from Animal class //inheritance
}

void main() {
  Human human = Human();
  //to update name by setter and getter in Human
  human.setEmail = "ali";           //Invalid email: must contain "@"
  print(human.getEmail);            //null
  human.setEmail = "human@gmail.com"; 
  print(human.getEmail);            //human@gmail.com

  Man man = Man();
  //to update name by setter and getter in Man
  man.setEmail = "man";           //Invalid email: must contain "@"
  print(man.getEmail);            //null
  man.setEmail = "man@gmail.com";
  print(man.getEmail);            //man@gmail.com
}
