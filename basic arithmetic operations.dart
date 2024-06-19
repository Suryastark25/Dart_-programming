import 'dart:io';

void main() {
  // Prompt the user to enter two numbers
  stdout.write('Enter the first number: ');
  double number1 = double.parse(stdin.readLineSync()!);
  
  stdout.write('Enter the second number: ');
  double number2 = double.parse(stdin.readLineSync()!);
  
  // Perform arithmetic operations
  double sum = number1 + number2;
  double difference = number1 - number2;
  double product = number1 * number2;
  
  // Check if number2 is zero before division to avoid division by zero error
  double quotient = number2 != 0 ? number1 / number2 : double.infinity;
  
  // Output the results
  print('$number1 + $number2 = $sum');
  print('$number1 - $number2 = $difference');
  print('$number1 * $number2 = $product');
  if (number2 != 0) {
    print('$number1 / $number2 = $quotient');
  } else {
    print('Cannot divide by zero.');
  }
}
