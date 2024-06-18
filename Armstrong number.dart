import 'dart:io';
import 'dart:math';

void main() {
  // Ask the user for a number
  stdout.write('Enter a number: ');
  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print('Invalid input.');
    return;
  }

  int number = int.parse(input);

  // Check if the number is an Armstrong number
  if (isArmstrong(number)) {
    print('$number is an Armstrong number.');
  } else {
    print('$number is not an Armstrong number.');
  }
}

bool isArmstrong(int number) {
  int sum = 0;
  int temp = number;
  int numDigits = number.toString().length;

  while (temp > 0) {
    int digit = temp % 10;
    sum += pow(digit, numDigits).toInt();
    temp ~/= 10;
  }

  return sum == number;
}
