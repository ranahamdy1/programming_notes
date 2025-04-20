abstract class Calc {
  double calculate();
}

class GetArea extends Calc {
  GetArea(this.length, this.width);
  double length;
  double width;

  @override
  double calculate() {
    return length * width;
  }
}

class GetPerimeter extends Calc {
  GetPerimeter(this.length, this.width);
  double length;
  double width;

  @override
  double calculate() {
    return 2 * (length + width);
  }
}

//Dependency Inversion
//The Shape class depends on the abstraction Calc rather than concrete implementations like GetArea or GetPerimeter.
class Shape {
  Calc calc; //dependency injection
  Shape(this.calc);

  double getShapeValue() {
    return calc.calculate(); // استدعاء الميثود لحساب القيمة
  }
}

void main() {
  GetArea getArea = GetArea(5, 3);
  Shape getAreaShape = Shape(getArea);
  print("Area : ${getAreaShape.getShapeValue()}");

  GetPerimeter getPerimeter = GetPerimeter(5, 3);
   Shape getPerimeterShape = Shape(getPerimeter);
  print("Perimeter: ${getPerimeterShape.getShapeValue()}");
}
