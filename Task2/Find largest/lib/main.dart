void main() {
  List<List<int>> nestedList = [
    [3, 5, 9],
    [8, 2, 4],
    [7, 1, 6]
  ];

  int largest = nestedList[0][0];

  for (List<int> sublist in nestedList) {
    for (int number in sublist) {
      if (number > largest) {
        largest = number;
      }
    }
  }

  print('The largest number is: $largest');
}
