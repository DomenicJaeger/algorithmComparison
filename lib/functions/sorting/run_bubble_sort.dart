/// Method to run bubble sort algorithm on a list of integers
List<int> bubbleSort(List<int> random) {
  List<int> sortedList = List.from(random);
  // Iterate through the list
  for (int i = 0; i < sortedList.length; i++) {
    // Flag to check if any swapping has been done
    bool swapped = false;
    // Iterate through the list up to the last unsorted element
    for (int j = 0; j < sortedList.length - i - 1; j++) {
      // If the element at index j is greater than the element at index j+1, swap them
      if (sortedList[j] > sortedList[j + 1]) {
        int temp = sortedList[j];
        sortedList[j] = sortedList[j + 1];
        sortedList[j + 1] = temp;
        // Set the flag to true
        swapped = true;
      }
    }
    // If no swapping has been done, break the loop
    if (!swapped) {
      break;
    }
  }
  // Return the sorted list
  return sortedList;
}
