int countSmallElements(List<int> array, int x) {
  int length = array.length;
  int count = 0;
  for (int i = 0; i < length; i++) {
    if (array[i] < x) {
      count++;
    }
  }
  return count;
}

void main() {
  List<int> array = [10, 12, 23, 24, 45, 23, 45,23];
  int x = 40;
  int count = countSmallElements(array, x);
  print("Count of elements smaller than $x is $count");
}
