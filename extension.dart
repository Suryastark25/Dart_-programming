import 'dart:io';

void main() {
  // Accept input from the user
  stdout.write('Enter a filename: ');
  String filename = stdin.readLineSync()!.trim();

  // Find the last dot (.) in the filename
  int lastIndex = filename.lastIndexOf('.');

  if (lastIndex != -1) {
    // Extract and print the extension
    String extension = filename.substring(lastIndex + 1);
    print('Extension of the file: $extension');
  } else {
    // No extension found
    print('No extension found for the file.');
  }
}
