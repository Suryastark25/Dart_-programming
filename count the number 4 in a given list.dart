void main() {
  List<int> numbers = [1, 4, 3, 5, 6, 4];
  
  int countOfFour = countNumber(numbers, 4);
  
  print('Number of 4s in the list: $countOfFour');
}

int countNumber(List<int> list, int numberToCount) {
  int count = 0;
  
  for (int num in list) {
    if (num == numberToCount) {
      count++;
    }
  }
  
  return count;
}
