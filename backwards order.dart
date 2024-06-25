import 'dart:io';

// Function to reverse the words in a string
String reverseWords(String input) {
  // Split the string into words
  List<String> words = input.split(' ');

  // Reverse the list of words
  List<String> reversedWords = words.reversed.toList();

  // Join the reversed list of words into a single string
  String reversedString = reversedWords.join(' ');

  return reversedString;
}

void main() {
  // Prompt the user to enter a long string
  stdout.write('Enter a long string containing multiple words: ');
  String? input = stdin.readLineSync();

  // Check if the input is not null
  if (input != null) {
    // Get the reversed words string
    String result = reverseWords(input);

    // Print the result
    print('Reversed words: $result');
  } else {
    print('Invalid input. Please enter a valid string.');
  }
}
