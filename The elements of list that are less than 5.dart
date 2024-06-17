void main() {
  List<int> numbers = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];

  // Iterate through each number in the list
  for (int number in numbers) {
    // Check if the number is less than 5
    if (number < 5) {
      // Print the number
      print(number);
    }
  }
}
