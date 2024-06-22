import 'dart:io';
import 'dart:math';

void main() {
  // Generate a random number between 1 and 100
  int randomNumber = generateRandomNumber(1, 100);

  // Ask the user to guess the number
  stdout.write("Guess the number between 1 and 100: ");
  int userGuess = int.parse(stdin.readLineSync()!);

  // Check the user's guess and provide feedback
  checkGuess(randomNumber, userGuess);
}

// Function to generate a random number between min and max (inclusive)
int generateRandomNumber(int min, int max) {
  Random random = Random();
  return min + random.nextInt(max - min + 1);
}

// Function to check the user's guess against the actual number
void checkGuess(int randomNumber, int userGuess) {
  if (userGuess < randomNumber) {
    print("Too low! The number was $randomNumber.");
  } else if (userGuess > randomNumber) {
    print("Too high! The number was $randomNumber.");
  } else {
    print("Congratulations! You guessed the number $randomNumber correctly.");
  }
}
