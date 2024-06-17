import 'dart:io';

void main() {
  // Step 1: Read input from the user
  stdout.write('Enter numbers separated by space: ');
  String input = stdin.readLineSync()!;
  
  // Step 2: Convert input to a list of integers
  List<int> numbers = input.split(' ').map((String num) => int.parse(num)).toList();
  
  // Step 3: Find the minimum value in the list
  int min = numbers[0]; // Assume the first element is the minimum initially
  
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] < min) {
      min = numbers[i];
    }
  }
  
  // Step 4: Output the minimum value
  print('Minimum value in the list: $min');
}
