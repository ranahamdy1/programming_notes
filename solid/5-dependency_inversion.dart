abstract class CalcOperation {
  void calc();
}

class Rectangle implements CalcOperation {
  @override
  void calc() {
    print("Rectangle calc");
  }
}

class Circle implements CalcOperation {
  @override
  void calc() {
    print("Circle calc");
  }
}

//Dependency Inversion
//The Calculator class depends on the abstraction CalcOperation rather than concrete implementations like Rectangle or Circle.
class Calculator {
  final List<CalcOperation> operations; //dependency injection
  Calculator(this.operations);

  void performCalculations() {
    for (var operation in operations) {
      operation.calc();
    }
  }
}

void main() {
  var rectangle = Rectangle();
  var circle = Circle();
  var calculator = Calculator([rectangle, circle]);
  calculator.performCalculations();
}
