void main() {
  // Sample dates
  DateTime date1 = DateTime(2014, 7, 2);
  DateTime date2 = DateTime(2014, 7, 11);

  // Calculate the difference in days
  int differenceInDays = calculateDifferenceInDays(date1, date2);

  // Output the result
  print('Number of days between $date1 and $date2: $differenceInDays days');
}

int calculateDifferenceInDays(DateTime date1, DateTime date2) {
  // Calculate the difference in milliseconds
  int differenceInMilliseconds = date2.difference(date1).inMilliseconds;

  // Convert milliseconds to days (1 day = 24 hours = 86400000 milliseconds)
  int differenceInDays = (differenceInMilliseconds / (24 * 60 * 60 * 1000)).round();

  return differenceInDays.abs(); // Return absolute value to ensure positive days
}
