import 'dart:io';
import 'dart:math';

void main() {
  stdout.write("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);

  if (isPrime(number)) {
    print("$number is a prime number.");
  } else {
    print("$number is not a prime number.");
  }
}

bool isPrime(int number) {
  if (number <= 1) {
    return false; // Numbers less than or equal to 1 are not prime
  }
  if (number == 2 || number == 3) {
    return true; // 2 and 3 are prime numbers
  }
  if (number % 2 == 0 || number % 3 == 0) {
    return false; // Numbers divisible by 2 or 3 are not prime (except 2 and 3)
  }

  int sqrtNumber = sqrt(number).ceil();
  for (int i = 5; i <= sqrtNumber; i += 6) {
    if (number % i == 0 || number % (i + 2) == 0) {
      return false; // Check divisibility by numbers of the form 6k ± 1 up to sqrt(number)
    }
  }

  return true; // If no divisors are found, the number is prime
}
