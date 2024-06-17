import 'dart:io';

void main() {
  stdout.write("Enter your name: ");
  String name = stdin.readLineSync()!;
  
  stdout.write("Enter your age: ");
  int age = int.parse(stdin.readLineSync()!);
  
  yearsUntil100(name, age);
}

void yearsUntil100(String name, int age) {
  int currentYear = DateTime.now().year;
  int yearsTo100 = 100 - age;
  int yearWhen100 = currentYear + yearsTo100;
  
  print("Hello $name!");
  print("You are currently $age years old.");
  print("You will be 100 years old in the year $yearWhen100.");
  print("You have $yearsTo100 years until you reach 100 years old.");
}
