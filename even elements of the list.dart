void main() {
  List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];

  List<int> evenNumbers = [];

  for (int number in a) {
    if (number % 2 == 0) {
      evenNumbers.add(number);
    }
  }

  print("Original list: $a");
  print("List with even elements only: $evenNumbers");
}
