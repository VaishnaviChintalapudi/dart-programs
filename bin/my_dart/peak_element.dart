List<int> peakElement(List<int> arr) {
  int length = arr.length;
  List<int> result = [];

  if (length == 1) return [arr[0]];

  if (arr[0] > arr[1]) {
    result.add(arr[0]);
  }

  for (int i = 1; i < length-1; i++) {
    if (arr[i - 1] < arr[i] && arr[i] > arr[i + 1]) {
      result.add(arr[i]);
    }
  }

  if (arr[length - 2] < arr[length - 1]) {
    result.add(arr[length - 1]);
  }

  return result;
}

void main() {
  List<int> arr = [10, 20, 15, 2, 23, 90, 80];
  List<int> peakElements = peakElement(arr);
  print("The peak elements are $peakElements");
}
