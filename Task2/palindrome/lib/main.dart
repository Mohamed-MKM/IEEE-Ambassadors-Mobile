void main() {
  List<String> words = ['level', 'world', 'radar', 'hello', 'madam', 'python'];

  for (String word in words) {
    if (isPalindrome(word)) {
      print('$word is a palindrome');
    }
  }
}

bool isPalindrome(String word) {
  String reversedWord = word.split('').reversed.join('');
  return word == reversedWord;
}
