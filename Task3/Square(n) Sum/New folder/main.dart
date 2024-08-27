int squareSum(List<int> nums) {
int total = 0;
  for (var num in nums) {
    total += num * num;
  }
  return total;

}
