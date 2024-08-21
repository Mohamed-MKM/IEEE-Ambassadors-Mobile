String getMiddle(String word) {
  int length = word.length;
  int middleIndex = length ~/ 2; 

  if (length % 2 == 0) {
    return word.substring(middleIndex - 1, middleIndex + 1);
  } else {
    return word[middleIndex];
  }
}

void main() {
  
  print(getMiddle("test"));    
  print(getMiddle("testing"));
  print(getMiddle("middle"));  
  print(getMiddle("A"));       
}
