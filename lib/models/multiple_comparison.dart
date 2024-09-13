import 'package:algorithm_comparison/models/algorithm_comparison.dart';
import 'package:algorithm_comparison/models/sorter.dart';

/// Class to run multiple comparisons between sorting algorithms
class MultipleComparisons extends AlgorithmComparison {
  int rounds;

  MultipleComparisons(this.rounds, int numOfNumbers, int maxValue) : super(numOfNumbers, maxValue);

  /// override the runAlgorithms method to run multiple comparisons
  @override
  void runAlgorithms() {
    validateInputs();

    if (rounds <= 0) {
      throw ArgumentError('Error: The number of rounds must be a positive integer.');
    }

    // Initialize the counters for the wins and ties
    int bubbleWins = 0;
    int mergeWins = 0;
    int quickWins = 0;
    int tie = 0;

    // Initialize the total duration counters
    int bubbleTotalDuration = 0;
    int mergeTotalDuration = 0;
    int quickTotalDuration = 0;

    // Run the comparisons for the specified number of rounds
    for (int i = 0; i < rounds; i++) {
      List<int> random = generateRandomNumbers();
      // Create a new Sorter object with the methods to run the sorting algorithms
      Sorter sorter = Sorter(random);

      // Run the sorting algorithms and measure the duration
      final bubbleSortStart = DateTime.now();
      sorter.runBubbleSort();
      final bubbleSortEnd = DateTime.now();
      final bubbleSortDuration = bubbleSortEnd.difference(bubbleSortStart).inMicroseconds;
      bubbleTotalDuration += bubbleSortDuration;

      // Run the sorting algorithms and measure the duration
      final mergeSortStart = DateTime.now();
      sorter.runMergeSort();
      final mergeSortEnd = DateTime.now();
      final mergeSortDuration = mergeSortEnd.difference(mergeSortStart).inMicroseconds;
      mergeTotalDuration += mergeSortDuration;

      // Run the sorting algorithms and measure the duration
      final quickSortStart = DateTime.now();
      sorter.runQuickSort();
      final quickSortEnd = DateTime.now();
      final quickSortDuration = quickSortEnd.difference(quickSortStart).inMicroseconds;
      quickTotalDuration += quickSortDuration;

      if (bubbleSortDuration < mergeSortDuration && bubbleSortDuration < quickSortDuration) {
        bubbleWins++;
      } else if (mergeSortDuration < bubbleSortDuration && mergeSortDuration < quickSortDuration) {
        mergeWins++;
      } else if (quickSortDuration < bubbleSortDuration && quickSortDuration < mergeSortDuration) {
        quickWins++;
      } else {
        tie++;
      }
    }

    double bubbleAverageDuration = bubbleTotalDuration / rounds;
    double mergeAverageDuration = mergeTotalDuration / rounds;
    double quickAverageDuration = quickTotalDuration / rounds;

    print('\nBubble Sort won $bubbleWins times.');
    print('Merge Sort won $mergeWins times.');
    print('Quick Sort won $quickWins times.');
    print('There were $tie ties.');

    print('Average Bubble Sort Duration: $bubbleAverageDuration µs');
    print('Average Merge Sort Duration: $mergeAverageDuration µs');
    print('Average Quick Sort Duration: $quickAverageDuration µs');
  }
}
