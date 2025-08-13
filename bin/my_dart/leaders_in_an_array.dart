//Naive approach
// List<int> findLeaders(List<int> arr) {
//   List<int> leaders = [];
//   int length = arr.length;
//   for (int i = 0; i < length; i++) {
//     int start = arr[i];
//     int flag = 0;
//     for (int j = i + 1; j < length; j++) {
//       if (arr[j] > start) {
//         flag = 1;
//         break;
//       }
//     }
//     flag == 0 ? leaders.add(start) : null;
//   }

//   return leaders;
// }

List<int> findLeaders(List<int> arr) {
  List<int> leaders = [];
  int length = arr.length;
  int max = arr.last;
  leaders.add(max);

  for (int i = length - 2; i >= 0; i--) {
    if (arr[i] >= max) {
      max = arr[i];
      leaders.add(max);
    }
  }

  return leaders.reversed.toList();
}

void main() {
  List<int> arr = [30, 10, 10, 5];
  List<int> leadersList = findLeaders(arr);
  print("Leaders are $leadersList");
}
