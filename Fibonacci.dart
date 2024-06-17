import 'dart:io';

void main() {
  stdout.write('Enter the number of Fibonacci numbers to generate: ');
  String? input = stdin.readLineSync();
  
  if (input != null) {
    try {
      int count = int.parse(input);
      if (count <= 0) {
        print('Please enter a number greater than zero.');
        return;
      }
      
      List<int> fibonacciSeries = generateFibonacciSeries(count);
      
      print('Fibonacci Series:');
      for (int number in fibonacciSeries) {
        print(number);
      }
      
    } catch (e) {
      print('Invalid input. Please enter a valid number.');
    }
  }
}

List<int> generateFibonacciSeries(int count) {
  List<int> series = [];
  
  if (count >= 1) {
    series.add(0);
  }
  if (count >= 2) {
    series.add(1);
  }
  
  for (int i = 2; i < count; i++) {
    int nextFib = series[i - 1] + series[i - 2];
    series.add(nextFib);
  }
  
  return series;
}
