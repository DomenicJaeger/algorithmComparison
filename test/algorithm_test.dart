import 'package:algorithm_comparison/functions/sorting/run_bubble_sort.dart';
import 'package:algorithm_comparison/functions/sorting/run_merge_sort.dart';
import 'package:algorithm_comparison/functions/sorting/run_quick_sort.dart';
import 'package:test/test.dart';

void main() {
  /// Testing Bubble Sort
  group('Bubble Sort Test', () {
    test('Test 1', () {
      List<int> random = [5, 3, 8, 6, 2, 7, 1, 4];
      List<int> sorted = [1, 2, 3, 4, 5, 6, 7, 8];
      expect(bubbleSort(random), sorted);
    });

    test('Test 2', () {
      List<int> random = [0, 1, 0, 1, 0, 0, 0, 1, 1];
      List<int> sorted = [0, 0, 0, 0, 0, 1, 1, 1, 1];
      expect(bubbleSort(random), sorted);
    });
  });
  // Testing Merge Sort
  group('Merge Sort Test', () {
    test('Test 1', () {
      List<int> random = [5, 3, 8, 6, 2, 7, 1, 4];
      List<int> sorted = [1, 2, 3, 4, 5, 6, 7, 8];
      expect(mergeSort(random), sorted);
    });

    test('Test 2', () {
      List<int> random = [0, 1, 0, 1, 0, 0, 0, 1, 1];
      List<int> sorted = [0, 0, 0, 0, 0, 1, 1, 1, 1];
      expect(mergeSort(random), sorted);
    });
  });
  // Testing Quick Sort
  group('Quick Sort Test', () {
    test('Test 1', () {
      List<int> random = [5, 3, 8, 6, 2, 7, 1, 4];
      List<int> sorted = [1, 2, 3, 4, 5, 6, 7, 8];
      expect(quickSort(random), sorted);
    });

    test('Test 2', () {
      List<int> random = [0, 1, 0, 1, 0, 0, 0, 1, 1];
      List<int> sorted = [0, 0, 0, 0, 0, 1, 1, 1, 1];
      expect(quickSort(random), sorted);
    });
  });
}
