int sunLightReceived(List<int> arr) {
  int length = arr.length;
  int count = 0;

  if (length == 0) {
    return 0;
  } else {
    int lsrb = arr[0];
    for (int i = 1; i < length; i++) {
      if (arr[i] > lsrb) {
        lsrb = arr[i];
        count++;
      }
    }

    return count + 1;
  }
}

void main() {
  List<int> height_of_buildings = [6, 2, 8, 4, 11, 13];
  int count = sunLightReceived(height_of_buildings);
  print("Number of buildings that receive sunlight is $count");
}
