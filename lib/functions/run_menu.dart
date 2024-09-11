import 'dart:io';
import 'package:algorithm_comparison/functions/validate_input.dart';
import 'package:algorithm_comparison/models/predefined_comparison.dart';
import 'package:algorithm_comparison/models/single_comparison.dart';
import 'package:algorithm_comparison/models/multiple_comparison.dart';

// main function to run the menu
void runMenu() {
  // Run the menu until the user decides to exit
  while (true) {
    // Display the menu options
    stdout.write(
        'Welcome to the Sorting Algorithm Comparator!\nChoose an option:\n1. Run a single predefined comparison, with 10000 numbers ranging from 0 to 99\n2. Run a single custom comparison\n3. Run multiple custom comparisons\nEnter your choice: ');
    // Get the user's choice
    String? choiceInput = stdin.readLineSync();

    // run a predefined comparison
    if (choiceInput == '1') {
      // run multiple comparisons, passing the number of rounds, number of random numbers, and maximum value
      PredefinedComparison().runAlgorithms();

      // run a single custom comparison
    } else if (choiceInput == '2') {
      // get the number of random numbers and the maximum value
      int numOfNumbers = getValidatedInput('\nEnter the amount of random numbers: ');
      int maxValue = getValidatedInput('Enter the maximum value for a random number: ');

      // handle invalid inputs
      if (numOfNumbers <= 0 || maxValue <= 0) {
        print('Error: The number of random numbers and maximum value must be positive integers.');
        continue;
      }

      // run a single comparison, passing the number of random numbers and the maximum value
      SingleComparison(numOfNumbers, maxValue).runAlgorithms();

      // run multiple custom comparisons
      // three values need to be entered: the number of rounds, the number of random numbers, and the maximum value
    } else if (choiceInput == '3') {
      int rounds = getValidatedInput('\nEnter the number of rounds to run the comparison: ');
      int numOfNumbers = getValidatedInput('Enter the amount of random numbers: ');
      int maxValue = getValidatedInput('Enter the maximum value for a random number: ');

      // handle invalid inputs
      if (numOfNumbers <= 0 || maxValue <= 0) {
        print('Error: The number of random numbers and maximum value must be positive integers.');
        continue;
      }

      // run multiple comparisons, passing the number of rounds, number of random numbers, and maximum value
      MultipleComparisons(rounds, numOfNumbers, maxValue).runAlgorithms();

      // handle invalid choices
    } else {
      print('Invalid choice. Please enter 1, 2 or 3.');
    }

    // Ask the user if they want to run another operation
    stdout.write('\nDo you want to run another operation? (yes/no): ');
    // Get the user's choice
    String? againInput = stdin.readLineSync()?.toLowerCase();
    // If the user chooses not to run another operation, break out of the loop (anything other than 'yes')
    if (againInput != 'yes') {
      print('\nGoodbye!\n');
      break;
    }
  }
}
