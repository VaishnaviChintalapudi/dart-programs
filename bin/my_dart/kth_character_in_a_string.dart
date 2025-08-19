void main() {
  int number = 5;
  int iterations = 2;
  int k = 1;

  int result = findK(number, iterations, k);
  print("The kth character is $result");
}

// 0 = 01
// 1 = 10
int findK(int number, int iterations, int k) {
  if (iterations <= 0) {
    return -1;
  }

  String binary = findBinary(number);
  int it_count = 0;
  String newStr = binary;

  while (it_count != iterations) {
    int i = 0;

    while (i < newStr.length) {
      
        if (newStr[i] == "0") {
          newStr = newStr.substring(0, i) + "01" + newStr.substring(i + 1);
          
        } else {
          newStr = newStr.substring(0, i) + "10" + newStr.substring(i + 1);
          
        }
        i += 2;
    }
    
    it_count++;
  }

  print("@@@NewStrFinally $newStr");
  return int.parse(newStr[k-1]);
}

String findBinary(int number) {
  String binary = "";
  while (number ~/ 2 != 1) {
    int rem = number % 2;
    number = number ~/ 2;
    binary += rem.toString();
  }
  return binary += "01";
}
