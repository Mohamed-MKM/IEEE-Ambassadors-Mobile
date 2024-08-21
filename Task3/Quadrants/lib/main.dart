int findQuadrant(int x, int y) {
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
 
  print(findQuadrant(1, 2));     
  print(findQuadrant(3, 5));     
  print(findQuadrant(-10, 100)); 
  print(findQuadrant(-1, -9));   
  print(findQuadrant(19, -56));  
}
