import 'dart:io';

void main() {
  // Ask the user for the year
  stdout.write('Enter the year: ');
  String? yearInput = stdin.readLineSync();

  // Ask the user for the month
  stdout.write('Enter the month (1-12): ');
  String? monthInput = stdin.readLineSync();

  if (yearInput == null || yearInput.isEmpty || monthInput == null || monthInput.isEmpty) {
    print('Invalid input.');
    return;
  }

  int year = int.parse(yearInput);
  int month = int.parse(monthInput);

  if (month < 1 || month > 12) {
    print('Invalid month. Please enter a value between 1 and 12.');
    return;
  }

  printCalendar(year, month);
}

void printCalendar(int year, int month) {
  List<String> daysOfWeek = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];

  // Print the header
  print('\nCalendar for $month/$year');
  for (var day in daysOfWeek) {
    stdout.write('$day ');
  }
  print('');

  // Find the first day of the month
  DateTime firstDayOfMonth = DateTime(year, month, 1);
  int startingDay = firstDayOfMonth.weekday % 7; // 0 for Sunday, 1 for Monday, ..., 6 for Saturday

  // Find the number of days in the month
  int daysInMonth = DateTime(year, month + 1, 0).day;

  // Print leading spaces for the first row
  for (int i = 0; i < startingDay; i++) {
    stdout.write('    ');
  }

  // Print the days of the month
  for (int day = 1; day <= daysInMonth; day++) {
    stdout.write('${day.toString().padLeft(2, ' ')}  ');

    // Move to the next line after Saturday
    if ((startingDay + day) % 7 == 0) {
      print('');
    }
  }
  print('');
}
