void main() {
  int num1 = 10;
  int num2 = 25;
  int num3 = 15;

  int largest = (num1 > num2 && num1 > num3) ? num1 : (num2 > num3) ? num2 : num3;

  int smallest = (num1 < num2 && num1 < num3) ? num1 : (num2 < num3) ? num2 : num3;
  print("The largest number is: $largest");
  print("The smallest number is: $smallest");
}
