import 'dart:io';

void main() {
  stdout.write('Enter the length of the rectangle: ');
  double length = double.parse(stdin.readLineSync()!);

  stdout.write('Enter the width of the rectangle: ');
  double width = double.parse(stdin.readLineSync()!);

  double area = length * width;
  double perimeter = 2 * (length + width);

  print('The area of the rectangle is: $area');
  print('The perimeter of the rectangle is: $perimeter');
}
