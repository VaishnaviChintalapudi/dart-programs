bool findAnagramPalindrom(String s){
  int length = s.length;
  Map<String,int> map = {};
  for(int i=0;i<length;i++){
    if(map[s[i]] != null){
      map[s[i]] =  map[s[i]]! + 1;
    }else{
      map[s[i]] = 1;
    }
  }
  
  if(length % 2 == 0) {
    for(var entry in map.entries){
      var k = entry.key;
      var v = entry.value;
      
      if(v % 2 != 0){
        return false;
      }
    }
    return true;
  }else{
    int single = 0;
    for(var entry in map.entries){
      var k = entry.key;
      var v = entry.value;
      
      if(v % 2 != 0){
        if(single == 0){
          single++;
        }else{
          return false;
        }
        
      }
    }
    return true;
  }
}

void main()
{
  String s = "geeksogeeks";
  bool result = findAnagramPalindrom(s);
  print(result);
}