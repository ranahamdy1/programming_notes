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

class Circle implements Shape {
  double radius;

  double area() {
    return pi * pow(radius, 2);
  }
}
