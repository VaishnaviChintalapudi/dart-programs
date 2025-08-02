int findOccurances(List<int> arr, int target) {
  int length = arr.length;
  int count = 0;

  for (int i = 0; i < length; i++) {
    if (arr[i] == target) {
      count++;
    } else if (arr[i] > target) {
      return count;
    }
  }

  return count;
}

void main() {
  List<int> arr = [1, 1, 2, 2, 3, 3, 4,4,5];
  int target = 40;

  int count = findOccurances(arr, target);
  print("Number of times target has occured is $count");
}
