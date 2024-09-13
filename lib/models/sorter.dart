import 'package:algorithm_comparison/functions/sorting/run_bubble_sort.dart';
import 'package:algorithm_comparison/functions/sorting/run_merge_sort.dart';
import 'package:algorithm_comparison/functions/sorting/run_quick_sort.dart';

// class to sort the random numbers
class Sorter {
  List<int> random;

  Sorter(this.random);

// run the sorting algorithms
  List<int> runBubbleSort() {
    return bubbleSort(random);
  }

// run the sorting algorithms
  List<int> runMergeSort() {
    return mergeSort(random);
  }

// run the sorting algorithms
  List<int> runQuickSort() {
    return quickSort(random);
  }
}
