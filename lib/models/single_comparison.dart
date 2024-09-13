import 'dart:io';
import 'package:algorithm_comparison/models/algorithm_comparison.dart';
import 'package:algorithm_comparison/models/sorter.dart';

/// Class to run a single comparison between bubble sort, merge sort, and quick sort
class SingleComparison extends AlgorithmComparison {
  SingleComparison(super.numOfNumbers, super.maxValue);

  /// Method to run a single comparison between bubble sort, merge sort, and quick sort
  @override
  void runAlgorithms() {
    validateInputs();

    List<int> random = generateRandomNumbers();
    Sorter sorter = Sorter(random);

    final bubbleSortStart = DateTime.now();
    List<int> sortedBubble = sorter.runBubbleSort();
    final bubbleSortEnd = DateTime.now();
    final bubbleSortDuration = bubbleSortEnd.difference(bubbleSortStart).inMicroseconds;

    final mergeSortStart = DateTime.now();
    List<int> sortedMerge = sorter.runMergeSort();
    final mergeSortEnd = DateTime.now();
    final mergeSortDuration = mergeSortEnd.difference(mergeSortStart).inMicroseconds;

    final quickSortStart = DateTime.now();
    List<int> sortedQuick = sorter.runQuickSort();
    final quickSortEnd = DateTime.now();
    final quickSortDuration = quickSortEnd.difference(quickSortStart).inMicroseconds;

    print('\nBubble Sort Duration: $bubbleSortDuration µs');
    print('Merge Sort Duration: $mergeSortDuration µs');
    print('Quick Sort Duration: $quickSortDuration µs');

    stdout.write('\nDo you want to see the sorted lists compared to the initial list? (yes/no): ');
    String? response = stdin.readLineSync();

    if (response != null && response.toLowerCase() == 'yes') {
      print('\nInitial List: $random\n');
      print('Sorted List by Bubble Sort: $sortedBubble\n');
      print('Sorted List by Merge Sort: $sortedMerge\n');
      print('Sorted List by Quick Sort: $sortedQuick\n');
    } else {
      print('Exiting Comparison...');
    }
  }
}
