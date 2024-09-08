abstract class FlyBehavior {
  void fly();
}

class FlyWithWings implements FlyBehavior {
  @override
  void fly() {
    print("Flying with wings!");
  }
}

class FlyNoWay implements FlyBehavior {
  @override
  void fly() {
    print("I can't fly.");
  }
}

abstract class Duck {
  FlyBehavior flyBehavior;
  Duck({required this.flyBehavior});

  void performFly() {
    flyBehavior.fly();
  }

  void swim() {
    print("All ducks float, even decoys!");
  }

  void display(); // يظل هذا مجردًا لأن كل نوع من البطات له مظهر مختلف
}

class MallardDuck extends Duck {
  MallardDuck(): super(flyBehavior: FlyWithWings());

  @override
  void display() {
    print("I'm a real Mallard duck.");
  }
}

class RubberDuck extends Duck {
  RubberDuck(): super(flyBehavior: FlyNoWay());

  @override
  void display() {
    print("I'm a rubber duckie.");
  }
}

void main() {
  Duck mallard = MallardDuck();
  mallard.display();  // يعرض نوع البطة
  mallard.performFly();  // ينفذ سلوك الطيران

  Duck rubberDuck = RubberDuck();
  rubberDuck.display();  // يعرض نوع البطة
  rubberDuck.performFly();  // ينفذ سلوك الطيران

  // تغيير سلوك الطيران في وقت التشغيل
  rubberDuck.flyBehavior = FlyWithWings();
  rubberDuck.performFly();
}

//---------------------------------------------------------------------------------------------

//another example

// Strategy Interface
abstract class PaymentStrategy {
  void pay(double amount);
}

// Concrete Strategies
class CreditCardPayment implements PaymentStrategy {
  @override
  void pay(double amount) {
    print('Paying $amount using Credit Card.');
  }
}

class PayPalPayment implements PaymentStrategy {
  @override
  void pay(double amount) {
    print('Paying $amount using PayPal.');
  }
}

// Context
class ShoppingCart {
  PaymentStrategy? paymentStrategy;

  void setPaymentStrategy(PaymentStrategy strategy) {
    paymentStrategy = strategy;
  }

  void checkout(double amount) {
    if (paymentStrategy != null) {
      paymentStrategy!.pay(amount);
    } else {
      print('No payment strategy selected.');
    }
  }
}

// Usage
/*void main() {
  ShoppingCart cart = ShoppingCart();

  // Use Credit Card Payment
  cart.setPaymentStrategy(CreditCardPayment());
  cart.checkout(100.0);

  // Switch to PayPal Payment
  cart.setPaymentStrategy(PayPalPayment());
  cart.checkout(200.0);
}*/
