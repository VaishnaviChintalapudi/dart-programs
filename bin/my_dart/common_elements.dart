// List<int> findCommonElements(List<int> a1, List<int> a2) {
//   List<int> commonElements = [];
//   int len1 = a1.length;
//   int len2 = a2.length;
//   Map<int, int> map1 = {};
//   Map<int, int> map2 = {};

//   for (int i = 0; i < len1; i++) {
//     if (!map1.containsKey(a1[i])) {
//       map1[a1[i]] = 1;
//     } else {
//       map1[a1[i]] = map1[a1[i]]! + 1;
//     }
//   }

//   for (int i = 0; i < len2; i++) {
//     if (!map2.containsKey(a2[i])) {
//       map2[a2[i]] = 1;
//     } else {
//       map2[a2[i]] = map2[a2[i]]! + 1;
//     }
//   }

//   if (len1 < len2) {
//     map1.forEach((key, value) {
//       if (map2.containsKey(key)) {
//         if(map1[key]! < map2[key]!){
          
//         }
//       }
//     });
//   }
// }

// void main() {
//   List<int> a1 = [3, 4, 2, 2, 4];
//   List<int> a2 = [3, 2, 2, 7];

//   List<int> result = findCommonElements(a1, a2);
//   print("The common elements in both the arrays are $result");
// }
