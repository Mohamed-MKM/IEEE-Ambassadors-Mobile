import 'dart:math';

abstract class Shape {
  double calculateArea();
  double calculatePerimeter();
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double calculateArea() {
    return width * height;
  }

  @override
  double calculatePerimeter() {
    return 2 * (width + height);
  }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }

  @override
  double calculatePerimeter() {
    return 2 * 3.14 * radius;
  }
}

class Triangle extends Shape {
  double a;
  double b;
  double c;

  Triangle(this.a, this.b, this.c);

  @override
  double calculateArea() {
    double s = (a + b + c) / 2;
    return sqrt(s * (s - a) * (s - b) * (s - c));
  }

  @override
  double calculatePerimeter() {
    return a + b + c;
  }
}

void main() {
  Shape rectangle = Rectangle(2.0, 3.0);
  Shape circle = Circle(2.0);
  Shape triangle = Triangle(3.0, 4.0, 5.0);

  print('Rectangle Area: ${rectangle.calculateArea()}');
  print('Rectangle Perimeter: ${rectangle.calculatePerimeter()}');

  print('Circle Area: ${circle.calculateArea()}');
  print('Circle Perimeter: ${circle.calculatePerimeter()}');

  print('Triangle Area: ${triangle.calculateArea()}');
  print('Triangle Perimeter: ${triangle.calculatePerimeter()}');
}
