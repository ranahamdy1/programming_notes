//class
class Customer {
  String? name;
  int age;

  //constructor
  Customer(this.name, this.age);
}
void main(){
  //object
  Customer customer = Customer("JO", 22);
  print(customer.age);
}

//--------------------------------------------------------
/*
//class
class Customer {
  String? name;
  int? age;

  //Default constructor
  defaultCustomer(){
    print("default constructor");
  }
  //Parameterized constructor
  Customer(String this.name, int this.age);
  //Named constructor
  Customer.namedConstructor(String this.name, int this.age);
}

//object
var customer = Customer("JO", 22);

// Default and Parameterized constructor can not come with each other
*/
