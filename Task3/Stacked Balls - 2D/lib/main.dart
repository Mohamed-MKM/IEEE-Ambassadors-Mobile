import 'dart:math';

double height(int cells) {
  return cells * (sqrt(3) / 2);
}

void main() {
  print(height(5));
}
