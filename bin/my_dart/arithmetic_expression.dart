int missingElementInAP(List<int> numbers) {
  late int missing;
  int length = numbers.length;
  int diff = 0;
  int flag = 0;
  if (length >= 2) {
    diff = numbers[1] - numbers[0];
    return -1;
  }

  for (int i = 2; i < length; i++) {
    if (numbers[i] - numbers[i - 1] != diff) {
      flag = 1;
      missing = numbers[i - 1] + diff;
    }
  }

  if (flag == 0) {
    missing = numbers[length - 1] + diff;
  }

  return missing;
}

void main() {
  List<int> numbers = [2, 4, 8, 10, 12, 14];
  int missingElement = missingElementInAP(numbers);
  print("The missing element in given AP is $missingElement");
}
