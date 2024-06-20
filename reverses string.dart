import 'dart:io';

void main() {
  // Prompt the user to enter a string
  stdout.write('Enter a string: ');
  
  // Read the input string from the user
  String input = stdin.readLineSync()!;
  
  // Reverse the string
  String reversedString = reverseString(input);
  
  // Print the reversed string
  print('Reversed string: $reversedString');
}

String reverseString(String str) {
  // Initialize an empty string to store the reversed version
  String reversed = '';
  
  // Iterate over each character in the original string from the end to the beginning
  for (int i = str.length - 1; i >= 0; i--) {
    // Append each character to the reversed string
    reversed += str[i];
  }
  
  // Return the reversed string
  return reversed;
}
