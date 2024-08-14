void main() {
  
  String numString = "42.58";
  double numDouble = double.parse(numString);

  int numInt = numDouble.toInt();

  
  print("Original String: $numString");
  print("Converted to double: $numDouble");
  print("Converted to int: $numInt");
}