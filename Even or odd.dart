import 'dart:io';

void main() {
  // Ask the user for a number
  stdout.write("Enter a number: ");
  
  // Read the input from user
  String input = stdin.readLineSync()!;
  
  // Parse the input string to an integer
  int number = int.parse(input);
  
  // Check if the number is even or odd
  if (number % 2 == 0) {
    print("$number is even.");
  } else {
    print("$number is odd.");
  }
}
