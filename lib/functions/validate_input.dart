// function to get validated input from the user
import 'dart:io';

int getValidatedInput(String prompt) {
  // Run the loop until a valid input is received
  while (true) {
    stdout.write(prompt);
    String? input = stdin.readLineSync();

    // If the input is null, print an error message and continue the loop
    if (input == null) {
      print('Error: Input cannot be null.');
      continue;
    }

    // Try to parse the input as an integer
    try {
      int value = int.parse(input);
      // If the value is greater than 0, return it
      if (value > 0) {
        return value;
        // If the value is less than or equal to 0, print an error message
      } else {
        print('Error: The value must be a positive integer.');
      }
      // If the input cannot be parsed as an integer, print an error message
    } catch (e) {
      print('Error: Invalid input. Please enter a valid number.');
    }
  }
}
