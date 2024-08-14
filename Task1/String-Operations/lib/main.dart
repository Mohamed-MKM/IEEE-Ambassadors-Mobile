void main() {
  
  String string1 = "Hello";
  String string2 = "World";

  String concatenatedString = string1 + " " + string2;

  int length = concatenatedString.length;

  
  String substring = concatenatedString.substring(6);

  
  String upperCaseString = concatenatedString.toUpperCase();
  String lowerCaseString = concatenatedString.toLowerCase();


  print("Concatenated String: $concatenatedString");
  print("Length of Concatenated String: $length");
  print("Extracted Substring: $substring");
  print("Uppercase String: $upperCaseString");
  print("Lowercase String: $lowerCaseString");
}