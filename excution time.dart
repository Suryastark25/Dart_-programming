import 'dart:core';

void main() {
  // Example usage: Measure execution time of a method
  Stopwatch stopwatch = Stopwatch();

  // Start the stopwatch
  stopwatch.start();

  // Call the method you want to measure
  int result = fibonacci(40); // Replace with your method call

  // Stop the stopwatch
  stopwatch.stop();

  // Print the elapsed time in milliseconds
  print('Execution time: ${stopwatch.elapsedMilliseconds} milliseconds');

  // Print the result or do other operations with the result
  print('Result: $result');
}

// Example method to calculate Fibonacci number (replace with your method)
int fibonacci(int n) {
  if (n <= 1) {
    return n;
  }
  return fibonacci(n - 1) + fibonacci(n - 2);
}
