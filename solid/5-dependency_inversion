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

class Calculator {
  final List<CalcOperation> operations;
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
