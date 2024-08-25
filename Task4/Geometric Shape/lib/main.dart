abstract class Shape {
  double calculateArea();
  double calculatePerimeter();
}

class Rectangle extends Shape {
  double length;
  double width;

  Rectangle({required this.length, required this.width});

  @override
  double calculateArea() {
    return length * width;
  }

 
  @override
  double calculatePerimeter() {
    return 2 * (length + width);
  }
}


class Circle extends Shape {
  double radius;
  Circle({required this.radius});

  @override
  double calculateArea() {
    return 3.14159 * radius * radius;
  }


  @override
  double calculatePerimeter() {
    return 2 * 3.14159 * radius;
  }
}


class Triangle extends Shape {
  double base;
  double height;
  double sideA, sideB, sideC;


  Triangle({
    required this.base,
    required this.height,
    required this.sideA,
    required this.sideB,
    required this.sideC,
  });

 
  @override
  double calculateArea() {
    return 0.5 * base * height;
  }

  @override
  double calculatePerimeter() {
    return sideA + sideB + sideC;
  }
}

void main() {

  Rectangle rectangle = Rectangle(length: 5, width: 3);
  Circle circle = Circle(radius: 4);
  Triangle triangle = Triangle(base: 4, height: 3, sideA: 3, sideB: 4, sideC: 5);


  List<Shape> shapes = [rectangle, circle, triangle];


  for (Shape shape in shapes) {
    print('Shape: ${shape.runtimeType}');
    print('Area: ${shape.calculateArea()}');
    print('Perimeter: ${shape.calculatePerimeter()}');
    print('-------------------------');
  }
}
