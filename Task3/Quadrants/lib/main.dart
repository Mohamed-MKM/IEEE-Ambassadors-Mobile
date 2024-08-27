int quadrantIs(int x, int y) {
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
 
  print(quadrantIs(1, 2));     
  print(quadrantIs(3, 5));     
  print(quadrantIs(-10, 100)); 
  print(quadrantIs(-1, -9));   
  print(quadrantIs(19, -56));  
}
