import 'package:algorithm_comparison/functions/sorting/run_bubble_sort.dart';
import 'package:algorithm_comparison/functions/sorting/run_merge_sort.dart';
import 'package:algorithm_comparison/functions/sorting/run_quick_sort.dart';

class Sorter {
  List<int> random;

  Sorter(this.random);

  List<int> runBubbleSort() {
    return bubbleSort(random);
  }

  List<int> runMergeSort() {
    return mergeSort(random);
  }

  List<int> runQuickSort() {
    return quickSort(random);
  }
}
