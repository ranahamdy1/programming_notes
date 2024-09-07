import 'dart:math';

// Abstract class 'Shape' defines a common interface for all shapes.
// This design is open for extension but closed for modification.
abstract class Shape {
  // Method 'area' must be implemented by all shapes.
  double area();
}

// 'Rectangle' implements 'Shape', providing a specific implementation for rectangles.
// Adding new shapes (e.g., Triangle, Polygon, Circle) does not require modification to this class.
class Rectangle implements Shape {
  double? width; 
  double? height;

  @override
  double area() {
    return width! * height!;
  }
}

// 'Circle' implements 'Shape', providing a specific implementation for circles.
// Adding new shapes (e.g., Triangle, Polygon) does not require modification to this class.
class Circle implements Shape {
  double? radius; 

  @override
  double area() {
    return pi * pow(radius!, 2); 
  }
}
