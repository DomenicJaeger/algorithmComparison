/// method to run quick sort algorithm on a list of integers
List<int> quickSort(List<int> random) {
  // If the list has only one element, return the list
  if (random.length <= 1) {
    return random;
  }

  // Find the pivot element at the middle index of the list
  int pivotIndex = random.length ~/ 2;
  int pivot = random[pivotIndex];

  // Split the list into three parts:
  // elements less than the pivot,
  // elements equal to the pivot,
  // and elements greater than the pivot
  List<int> less = [];
  List<int> equal = [];
  List<int> greater = [];

  // Iterate through the list and add elements to the respective lists
  for (int i in random) {
    if (i < pivot) {
      less.add(i);
    } else if (i == pivot) {
      equal.add(i);
    } else {
      greater.add(i);
    }
  }

  // Recursively run quick sort on the lesser and greater parts
  // equal part does not need to be sorted as it is already sorted
  less = quickSort(less);
  greater = quickSort(greater);

  // Return the concatenated list of the three parts
  return [...less, ...equal, ...greater];
}
