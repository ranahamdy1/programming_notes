import 'dart:math';

abstract class Shape {
  double area();
}

class Rectangle implements Shape {
  double? width;
  double? height;

  @override
  double area() {
    return width! * height!;
  }
}

class Circle implements Shape {
  double? radius;

  @override
  double area() {
    return pi * pow(radius!, 2);
  }
}
