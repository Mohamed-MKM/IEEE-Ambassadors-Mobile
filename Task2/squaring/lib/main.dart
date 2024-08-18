void main() {
  
  List<int> numbers = [1, 2, 3, 4, 5];

  List<int> squaredNumbers = numbers.map((number) => number * number).toList();

  squaredNumbers.removeAt(2);

  squaredNumbers.sort((a, b) => b.compareTo(a));

  print(squaredNumbers);
}
