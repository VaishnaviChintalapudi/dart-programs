// floor(List<int> arr, int k) {
//   int length = arr.length;

//   for (int i = 0; i < length; i++) {
//     if (arr[i] > k) {
//       return i - 1;
//     }
//   }
//   return -1;
// }

//Using binary search
floor(List<int> arr, int k) {
  int length = arr.length;

  int left = 0;
  int right = length - 1;
  int mid = 0;

  while (left <= right) {
    mid = left + ((right - left) ~/ 2);
    print("Mids are $mid");

    if (arr[mid] == k) {
      return mid - 1;
    } else if (arr[mid] < k) {
      left = mid + 1;
    } else if (arr[mid] > k) {
      right = mid - 1;
    }
  }

  return mid;
}

void main() {
  List<int> arr = [1, 2, 8, 10, 10, 12, 19];
  int k = 11;

  int floorValue = floor(arr, k);
  print("Floor is $floorValue");
}
