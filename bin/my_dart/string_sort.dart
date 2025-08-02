// sortString(String a) {
//   List<String> chars = a.split('');
//   chars.sort();
//   return chars.join('');
// }

sortString(String a) {
  List<String> chars = [];
  for (int i = 0; i < a.length; i++) {
    chars.add(a[i]);
  }

  int n = chars.length;
  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (chars[j].codeUnitAt(0) < chars[j + 1].codeUnitAt(0)) {
        String temp = chars[j];
        chars[j] = chars[j + 1];
        chars[j + 1] = temp;
      }
    }
  }

  String result = "";
  for (int i = 0; i < chars.length; i++) {
    result += chars[i];
  }

  return result;
}

void main() {
  String a = "zyxa";
  String result = sortString(a);

  print("Finally the sorted string is $result");
}
