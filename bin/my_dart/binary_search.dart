int binarySearch(List<int> arr, int k) {
  int left = 0;
  int right = arr.length - 1;

  while (left <= right) {
    int mid = left + ((right - left) ~/ 2);
    print("Mid is $mid");

    if (arr[mid] == k) {
      return mid;
    } else if (arr[mid] < k) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }

  return -1; // Not found
}

void main() {
  List<int> arr = [1, 2, 3, 4, 5];

  int k = 5;
  int result = binarySearch(arr, k);

  print("Element found at position $result");
}
