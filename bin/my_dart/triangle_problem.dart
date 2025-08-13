int possibleTrianglesFormed1(List<int> arr) {
  int count = 0;
  int length = arr.length;

  for (int i = 0; i < length; i++) {
    for (int j = i + 1; j < length; j++) {
      for (int k = j + 1; k < length; k++) {
        print("${arr[i]} ${arr[j]} ${arr[k]}");
        int sum = arr[i] + arr[j];
        if (sum > arr[k]) {
          count++;
        }
      }
    }
  }

  return count;
}

int possibleTrianglesFormed(List<int> arr) {
  arr.sort();
  int count = 0;
  int n = arr.length;

  for (int i = n - 1; i >= 1; i--) {
    //[10, 21, 22, 100, 101, 200, 300];
    int left = 0, right = i - 1;
    while (left < right) {
      if (arr[left] + arr[right] > arr[i]) {
        count += right - left;
        right--;
      } else {
        left++;
      }
    }
  }
  return count;
}

void main() {
  List<int> arr = [10, 21, 22, 100, 101, 200, 300];
  int count = possibleTrianglesFormed(arr);
  print("Triangles formed $count");
}
