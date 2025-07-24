bool findAnagramPalindrom(String s) {
  int length = s.length;
  Map<String, int> map = {};
  for (int i = 0; i < length; i++) {
    map.update(s[i], (value) => value + 1, ifAbsent: () => 1);
    //     if(map[s[i]] != null){
    //       map[s[i]] =  map[s[i]]! + 1;
    //     }else{
    //       map[s[i]] = 1;
    //     }
  }

  int oddCount = 0;
  for (var v in map.values) {
    if (v % 2 != 0) {
      oddCount++;
    }
  }
  
  return s.length % 2 == 0 ? oddCount == 0 : oddCount == 1;

}

void main() {
  String s = "geeksogeeks";
  bool result = findAnagramPalindrom(s);
  print(result);
}