import 'dart:io';

void main() {
  // Prompt user for input
  print('Enter your first name:');
  String firstName = stdin.readLineSync()!;
  
  print('Enter your last name:');
  String lastName = stdin.readLineSync()!;
  
  // Print the names in reverse order
  print('Reversed Name:');
  print('$lastName $firstName');
}
