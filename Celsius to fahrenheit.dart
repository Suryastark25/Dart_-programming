import 'dart:io';

void main() {
  // Prompt the user to enter the temperature in Celsius
  stdout.write('Enter the temperature in Celsius: ');
  double celsius = double.parse(stdin.readLineSync()!);
  
  // Convert Celsius to Fahrenheit
  double fahrenheit = (celsius * 9 / 5) + 32;
  
  // Output the result
  print('$celsius degrees Celsius is equal to $fahrenheit degrees Fahrenheit');
}
