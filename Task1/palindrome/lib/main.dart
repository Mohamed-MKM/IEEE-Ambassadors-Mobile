import 'dart:io';

void main() {
  stdout.write('Enter a string: ');
  String input = stdin.readLineSync()!.toLowerCase();

  String cleanedInput = input.replaceAll(RegExp(r'[^a-z0-9]'), '');

  String reversedInput = cleanedInput.split('').reversed.join('');

  if (cleanedInput == reversedInput) {
    print('The string is a palindrome.');
  } else {
    print('The string is not a palindrome.');
  }
}
