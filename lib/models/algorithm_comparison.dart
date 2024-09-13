import 'dart:math';

abstract class AlgorithmComparison {
  int numOfNumbers;
  int maxValue;

  AlgorithmComparison(this.numOfNumbers, this.maxValue);

  List<int> generateRandomNumbers() {
    return List.generate(numOfNumbers, (index) => Random().nextInt(maxValue + 1));
  }

  void validateInputs() {
    if (numOfNumbers <= 0 || maxValue <= 0) {
      throw ArgumentError('Error: The number of random numbers and maximum value must be positive integers.');
    }
  }

  void runAlgorithms();
}
