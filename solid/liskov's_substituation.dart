abstract class Shape {
  double area();
}

class Rectangle implements Shape {
  double width;
  double height;

  double area() {
    return width * height;
  }
}

class Square implements Shape {
  double side;

  double area() {
    return pow(side, 2);
  }
}
