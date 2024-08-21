int rearrange(int number) {
  
  List<String> digits = number.toString().split('');
  digits.sort((a, b) => b.compareTo(a));
  int result = int.parse(digits.join(''));
  return result;
}

void main() {
  print(rearrange(42145));  
  print(rearrange(145263));
  print(rearrange(123456789));
}
