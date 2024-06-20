import 'dart:io';

void main() {
  // Prompt the user to enter a number
  stdout.write('Enter a number: ');

  // Read the input number from the user
  String input = stdin.readLineSync()!;
  
  // Parse the input as an integer
  int number = int.tryParse(input) ?? 0;

  // Call the function to swap the first and last digits
  int swappedNumber = swapFirstLastDigits(number);

  // Display the swapped number
  print('Swapped number: $swappedNumber');
}

int swapFirstLastDigits(int number) {
  // Convert the number to a string to easily access digits
  String numStr = number.toString();

  // Check if the number has only one digit (no change needed)
  if (numStr.length == 1) {
    return number;
  }

  // Get the first and last digits
  String firstDigit = numStr[0];
  String lastDigit = numStr[numStr.length - 1];

  // Create a new string with swapped first and last digits
  String swappedStr = lastDigit + numStr.substring(1, numStr.length - 1) + firstDigit;

  // Parse the swapped string back to an integer
  int swappedNumber = int.tryParse(swappedStr) ?? 0;

  return swappedNumber;
}
