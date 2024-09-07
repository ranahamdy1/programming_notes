import 'dart:math';

// Abstract class 'Shape' defines a common interface for all shapes.
// This design is open for extension but closed for modification.
abstract class Shape {
  double area();
}

// Open closed principle
// Adding new shapes (Triangle, Polygon, Circle,...) does not require modification to this class.
class Rectangle implements Shape {
  double? width; 
  double? height;

  @override
  double area() {
    return width! * height!;
  }
}

// Open closed principle
// Adding new shapes (Triangle, Polygon,...) does not require modification to this class.
class Circle implements Shape {
  double? radius; 

  @override
  double area() {
    return pi * pow(radius!, 2); 
  }
}
