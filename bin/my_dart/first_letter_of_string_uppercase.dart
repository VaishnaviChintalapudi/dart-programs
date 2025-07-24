String convertToUppercase(String a) {
  String result = "";
  List<String> splits = a.split(" ");
  int length = splits.length;
  for (int i = 0; i < length; i++) {
    String word = splits[i];
    result += "${word.length > 1 ? word[0].toUpperCase() + word.substring(1) : word[0].toUpperCase()} ";
    
//     if (word.length > 1) {
//       String converted = word[0].toUpperCase() + word.substring(1);
//       result += "$converted ";
//     } else {
//       String converted = splits[i][0].toUpperCase();
//       result += "$converted ";
//     }
  }
  return result;
}

void main() {
  String a = "i love vyshnavi";
  String result = convertToUppercase(a);
  print("Result is $result");
}