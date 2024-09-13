/// method to run merge sort algorithm on a list of integers
List<int> mergeSort(List<int> random) {
  // If the list has only one element, return the list
  if (random.length <= 1) {
    return random;
  }

  // Find the middle index of the list
  int mid = random.length ~/ 2;
  // Split the list into two halves
  List<int> left = random.sublist(0, mid);
  List<int> right = random.sublist(mid);

  // Recursively run merge sort on the two halves
  left = mergeSort(left);
  right = mergeSort(right);

  // Merge the two halves
  return merge(left, right);
}

// Method to merge and sort two lists
List<int> merge(List<int> left, List<int> right) {
  // List to store the result
  List<int> result = [];
  // Index for the left list
  int i = 0;
  // Index for the right list
  int j = 0;

  // Iterate through the two lists
  while (i < left.length && j < right.length) {
    // If the element in the left list is less than or equal to the element in the right list,
    // add the element from the left list to the result list and increment the index for the left list
    if (left[i] <= right[j]) {
      result.add(left[i]);
      i++;
      // If the element in the right list is less than the element in the left list,
      // add the element from the right list to the result list and increment the index for the right list
    } else {
      result.add(right[j]);
      j++;
    }
  }

  // Add the remaining elements from the left list to the result list
  while (i < left.length) {
    result.add(left[i]);
    i++;
  }

  // Add the remaining elements from the right list to the result list
  while (j < right.length) {
    result.add(right[j]);
    j++;
  }

  // Return the sorted list
  return result;
}
