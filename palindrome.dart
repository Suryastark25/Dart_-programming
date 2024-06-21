bool isPalindrome(int number) {
  String numberStr = number.toString();
  int left = 0;
  int right = numberStr.length - 1;

  while (left < right) {
    if (numberStr[left] != numberStr[right]) {
      return false;
    }
    left++;
    right--;
  }

  return true;
}

void main() {
  // Test cases
  int num1 = 12321;
  int num2 = 12345;

  print('$num1 is ${isPalindrome(num1) ? "a palindrome" : "not a palindrome"}');
  print('$num2 is ${isPalindrome(num2) ? "a palindrome" : "not a palindrome"}');
}
