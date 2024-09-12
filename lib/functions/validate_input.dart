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

    // If the input is higher than 32^2-1, print an error message and continue the loop
    if (int.parse(input) > 4294967295) {
      print('Error: The number exceeds the 32-bit implementation of integers and must be less than 4294967295.');
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
