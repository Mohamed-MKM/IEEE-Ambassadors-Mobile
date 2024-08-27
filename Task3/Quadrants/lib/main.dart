int quadrant(int x, int y) {
  if (x > 0 && y > 0) {
    return 1;  
  } else if (x < 0 && y > 0) {
    return 2;  
  } else if (x < 0 && y < 0) {
    return 3; 
  } else if (x > 0 && y < 0) {
    return 4;  
  }
  
  return 0; 
}

void main() {
 
  print(quadrant(1, 2));     
  print(quadrant(3, 5));     
  print(quadrant(-10, 100)); 
  print(quadrant(-1, -9));   
  print(quadrant(19, -56));  
}
