int missingElementInAP(List<int> numbers) {
  late int missing;
  int length = numbers.length;
  int diff = 0;
  int flag = 0;

  if (length > 2) {
    int diff1 = numbers[1] - numbers[0];
    int diff2 = numbers[2] - numbers[1];

    diff =
        (diff1 == diff2) ? diff1 : (numbers[length - 1] - numbers[0]) ~/ length;
  }

  for (int i = 1; i < length; i++) {
    if (numbers[i] - numbers[i - 1] != diff) {
      flag = 1;
      missing = numbers[i - 1] + diff;
      break;
    }
  }

  if (flag == 0) {
    missing = numbers[length - 1] + diff;
  }

  return missing;
}

void main() {
  List<int> numbers = [2, 6, 8, 10, 12, 14];
  int missingElement = missingElementInAP(numbers);
  print("The missing element in given AP is $missingElement");
}
