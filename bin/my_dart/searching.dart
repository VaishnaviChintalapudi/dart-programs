findElement(List<int> arr, int k) {
  int length = arr.length;

  for (int i = 0; i < length; i++) {
    if (arr[i] == k) {
      return i;
    }
  }
  return -1;
}

void main() {
  List<int> arr = [12, 13, 14, 15, 15];
  int k = 130;
  int position = findElement(arr, k);
  print("Element found at position $position");
}
