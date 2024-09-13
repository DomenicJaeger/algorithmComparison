// a test that tests the sorter class
import 'package:algorithm_comparison/models/sorter.dart';
import 'package:test/test.dart';

void main() {
  group('Testing Sorter Class', () {
    test('Test 1', () {
      final sorter = Sorter([5, 3, 8, 6, 2, 7, 1, 4]);
      List<int> sorted = [1, 2, 3, 4, 5, 6, 7, 8];
      expect(sorter.runBubbleSort(), sorted);
    });

    test('Test 2', () {
      final sorter = Sorter([9, 5, 7, 3, 6, 2, 8, 4, 1]);
      List<int> sorted = [1, 2, 3, 4, 5, 6, 7, 8, 9];
      expect(sorter.runMergeSort(), sorted);
    });

    test('Test 3', () {
      final sorter = Sorter([4, 2, 9, 1, 7, 5, 8, 3, 6]);
      List<int> sorted = [1, 2, 3, 4, 5, 6, 7, 8, 9];
      expect(sorter.runQuickSort(), sorted);
    });
  });
}
