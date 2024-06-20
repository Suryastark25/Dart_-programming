import 'dart:io';

void main() {
  // Prompt the user to enter a string
  print('Enter a string:');
  
  // Read the string from the console
  String? inputString = stdin.readLineSync();
  
  // Check if the input is not null
  if (inputString != null) {
    int alphabetCount = 0;
    int digitCount = 0;
    int specialCharCount = 0;

    // Iterate through each character in the string
    for (int i = 0; i < inputString.length; i++) {
      // Check if the character is an alphabet
      if ((inputString[i].toLowerCase().compareTo('a') >= 0 && inputString[i].toLowerCase().compareTo('z') <= 0)) {
        alphabetCount++;
      }
      // Check if the character is a digit
      else if (inputString[i].compareTo('0') >= 0 && inputString[i].compareTo('9') <= 0) {
        digitCount++;
      }
      // Otherwise, it is a special character
      else {
        specialCharCount++;
      }
    }

    // Print the counts
    print('Alphabets: $alphabetCount');
    print('Digits: $digitCount');
    print('Special characters: $specialCharCount');
  } else {
    print('No input received.');
  }
}
