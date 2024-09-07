// Step 1: Define the Strategy Interfaces
abstract class FlyBehavior {
  void fly();
}

abstract class QuackBehavior {
  void quack();
}

// Step 2: Implement Concrete Strategies for FlyBehavior
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

// Step 3: Implement Concrete Strategies for QuackBehavior
class Quack implements QuackBehavior {
  @override
  void quack() {
    print("Quack!");
  }
}

class Squeak implements QuackBehavior {
  @override
  void quack() {
    print("Squeak!");
  }
}

class MuteQuack implements QuackBehavior {
  @override
  void quack() {
    print("...");
  }
}

// Step 4: Create the Duck Class (Context)
abstract class Duck {
  FlyBehavior flyBehavior;
  QuackBehavior quackBehavior;

  Duck({required this.flyBehavior, required this.quackBehavior});

  void performFly() {
    flyBehavior.fly();
  }

  void performQuack() {
    quackBehavior.quack();
  }

  void swim() {
    print("All ducks float, even decoys!");
  }

  // You can change the behavior at runtime
  void setFlyBehavior(FlyBehavior fb) {
    flyBehavior = fb;
  }

  void setQuackBehavior(QuackBehavior qb) {
    quackBehavior = qb;
  }

  void display();
}

// Step 5: Implement Specific Duck Types
class MallardDuck extends Duck {
  MallardDuck(): super(flyBehavior: FlyWithWings(), quackBehavior: Quack());

  @override
  void display() {
    print("I'm a real Mallard duck.");
  }
}

class RubberDuck extends Duck {
  RubberDuck(): super(flyBehavior: FlyNoWay(), quackBehavior: Squeak());

  @override
  void display() {
    print("I'm a rubber duckie.");
  }
}

// Step 6: Test the Strategy Pattern
void main() {
  Duck mallard = MallardDuck();
  mallard.display();
  mallard.performFly();
  mallard.performQuack();

  Duck rubberDuck = RubberDuck();
  rubberDuck.display();
  rubberDuck.performFly();
  rubberDuck.performQuack();

  // Change behavior at runtime
  rubberDuck.setFlyBehavior(FlyWithWings());
  rubberDuck.performFly();
}
