// A test that test the runBubbleSort method in a group
import 'package:algorithm_comparison/functions/sorting/run_bubble_sort.dart';
import 'package:algorithm_comparison/functions/sorting/run_merge_sort.dart';
import 'package:algorithm_comparison/functions/sorting/run_quick_sort.dart';
import 'package:test/test.dart';

void main() {
  group('Bubble Sort Test', () {
    test('Test 1', () {
      List<int> random = [5, 3, 8, 6, 2, 7, 1, 4];
      List<int> sorted = [1, 2, 3, 4, 5, 6, 7, 8];
      expect(bubbleSort(random), sorted);
    });

    test('Test 2', () {
      List<int> random = [9, 5, 7, 3, 6, 2, 8, 4, 1];
      List<int> sorted = [1, 2, 3, 4, 5, 6, 7, 8, 9];
      expect(bubbleSort(random), sorted);
    });

    test('Test 3', () {
      List<int> random = [4, 2, 9, 1, 7, 5, 8, 3, 6];
      List<int> sorted = [1, 2, 3, 4, 5, 6, 7, 8, 9];
      expect(bubbleSort(random), sorted);
    });
  });
  group('Merge Sort Test', () {
    test('Test 1', () {
      List<int> random = [5, 3, 8, 6, 2, 7, 1, 4];
      List<int> sorted = [1, 2, 3, 4, 5, 6, 7, 8];
      expect(mergeSort(random), sorted);
    });

    test('Test 2', () {
      List<int> random = [9, 5, 7, 3, 6, 2, 8, 4, 1];
      List<int> sorted = [1, 2, 3, 4, 5, 6, 7, 8, 9];
      expect(mergeSort(random), sorted);
    });

    test('Test 3', () {
      List<int> random = [4, 2, 9, 1, 7, 5, 8, 3, 6];
      List<int> sorted = [1, 2, 3, 4, 5, 6, 7, 8, 9];
      expect(mergeSort(random), sorted);
    });
  });
  group('Quick Sort Test', () {
    test('Test 1', () {
      List<int> random = [5, 3, 8, 6, 2, 7, 1, 4];
      List<int> sorted = [1, 2, 3, 4, 5, 6, 7, 8];
      expect(quickSort(random), sorted);
    });

    test('Test 2', () {
      List<int> random = [9, 5, 7, 3, 6, 2, 8, 4, 1];
      List<int> sorted = [1, 2, 3, 4, 5, 6, 7, 8, 9];
      expect(quickSort(random), sorted);
    });

    test('Test 3', () {
      List<int> random = [4, 2, 9, 1, 7, 5, 8, 3, 6];
      List<int> sorted = [1, 2, 3, 4, 5, 6, 7, 8, 9];
      expect(quickSort(random), sorted);
    });
  });
}
