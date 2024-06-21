import 'dart:io';

void main() {
  stdout.write('Enter a binary number: ');
  String binaryString = stdin.readLineSync()!.trim();

  // Validate if the input is a valid binary number
  if (!isValidBinary(binaryString)) {
    print('Invalid binary number entered.');
    return;
  }

  // Convert binary to decimal
  int decimalNumber = 0;
  int length = binaryString.length;

  for (int i = 0; i < length; i++) {
    int digit = int.parse(binaryString[length - 1 - i]);
    decimalNumber += digit * (1 << i); // equivalent to digit * 2^i
  }

  // Print the decimal representation
  print('Decimal representation of $binaryString is: $decimalNumber');
}

bool isValidBinary(String binaryString) {
  // Check if the string contains only '0's and '1's
  for (int i = 0; i < binaryString.length; i++) {
    if (binaryString[i] != '0' && binaryString[i] != '1') {
      return false;
    }
  }
  return true;
}
