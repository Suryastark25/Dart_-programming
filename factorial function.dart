import 'dart:io';

void main() {
  // Ask the user for a number
  stdout.write('Enter a number to calculate its factorial: ');
  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print('Invalid input.');
    return;
  }

  int number = int.parse(input);

  // Calculate the factorial using the factorial function
  int result = factorial(number);
  
  // Print the result
  print('The factorial of $number is $result.');
}

int factorial(int n) {
  if (n <= 1) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}
