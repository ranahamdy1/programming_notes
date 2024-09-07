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

//------------------------------------------------------------------------

/*
// constructor types

//class
class Customer {
  String? name;
  int? age;

  // Default constructor
  Customer() {
    print("default constructor");
  }

  // Parameterized constructor
  Customer(this.name, this.age);

  // Named constructor
  Customer.namedConstructor(this.name, this.age);
}

void main() {
//Object
// Object instantiation using parameterized constructor
var customer = Customer("JO", 22);
print(customer.age);

// Object instantiation using named constructor
var namedCustomer = Customer.namedConstructor("JO", 22);
print(namedCustomer.age);
  
// This code has an error because Default and Parameterized constructor can not come with each other
}*/
