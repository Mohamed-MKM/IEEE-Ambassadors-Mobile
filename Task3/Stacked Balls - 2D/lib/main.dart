import 'dart:math';

double stackHeight(int layers) {
  if (layers == 0) return 0;
  return 1 + (layers - 1) * sqrt(3) / 2;
}

void main() {
 
  print(stackHeight(0));  
  print(stackHeight(5)); 

  //Used Some help from youtube to understand the assignment 
}
