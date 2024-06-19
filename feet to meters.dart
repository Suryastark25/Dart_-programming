import 'dart:io';

void main() {
  // Prompt the user to enter the length in feet
  stdout.write('Enter the length in feet: ');
  double feet = double.parse(stdin.readLineSync()!);
  
  // Convert feet to meters
  double meters = feet * 0.3048;
  
  // Output the result
  print('$feet feet is equal to $meters meters');
}
