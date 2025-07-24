List<int> reverseArray(List<int> array) {
  int length = array.length;

  //Normal reversing
  // List<int> reversedArray = [];
  // int index = 0;

  // for (int i = length - 1; i >= 0; i--) {
  //   reversedArray.add(array[i]);
  // }

  // return reversedArray;

  //In-place reversing
  // int index = 0;
  // int iterations = length-1;
  // while(iterations > 0){
  //   array.insert(index++, array.removeLast());
  //   iterations --;
  // }
  // return array;

  //Even more optimised
  int left = 0;
  int right = length - 1;
  while (left < right) {
    int temp = array[left];
    array[left] = array[right];
    array[right] = temp;

    left++;
    right--;
  }

  return array;
}

void main(List<String> args) {
  List<int> array = [10, 12, 23, 24, 45, 23, 45];
  List<int> reversedArray = reverseArray(array);

  print("Reversed Array is $reversedArray");
}
