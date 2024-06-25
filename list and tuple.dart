import 'dart:io';

class MyTuple {
  final List<String> items;

  MyTuple(this.items);

  @override
  String toString() {
    return '(${items.join(', ')})';
  }
}

void main() {
  // Accept input from the user
  stdout.write('Enter a sequence of comma-separated numbers: ');
  String input = stdin.readLineSync()!;
  
  // Split the input string by commas and trim whitespace
  List<String> numbersList = input.split(',').map((e) => e.trim()).toList();

  // Print the List
  print('List : $numbersList');

  // Create a "tuple" using our custom class MyTuple
  MyTuple tuple = MyTuple(numbersList);

  // Print the Tuple
  print('Tuple: $tuple');
}
