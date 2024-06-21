import 'dart:io';

void main() {
  stdout.write('Enter a decimal number: ');
  String input = stdin.readLineSync()!;
  
  // Parse the input string to an integer
  int decimalNumber = int.parse(input);

  // Convert decimal to binary
  List<int> binaryDigits = [];
  int quotient = decimalNumber;

  // Edge case for 0
  if (decimalNumber == 0) {
    binaryDigits.add(0);
  } else {
    while (quotient > 0) {
      int remainder = quotient % 2;
      binaryDigits.add(remainder);
      quotient ~/= 2; // integer division
    }
  }

  // Reverse the list to get the binary representation
  binaryDigits = binaryDigits.reversed.toList();

  // Print the binary representation
  print('Binary representation of $decimalNumber is: ${binaryDigits.join()}');
}
