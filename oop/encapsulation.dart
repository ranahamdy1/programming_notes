void main() {
  Customer customer = Customer();
  customer.setName = 'jo';
  print(customer.getName);
}

class Customer {
  String? _name;

  set setName(String name) => _name = name;

  String get getName => _name!;
}
