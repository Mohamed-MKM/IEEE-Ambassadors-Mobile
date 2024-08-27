 int descendingOrder(int number) {

  List<int> numList = [];

  while (number > 0) {
    numList.add(number % 10);
    number = number ~/ 10;
  }
  numList.sort((a, b) => b.compareTo(a));

  int result = 0;
  for (int digit in numList) {
    result = result * 10 + digit;
  }

  return result;
}

