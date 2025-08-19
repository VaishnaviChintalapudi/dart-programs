int nearestMultipleOfTen(int a) {
  int nearest = (a / 10).round() * 10;
  return nearest;
}

void main() {
  int a = -72;

  int multipleOfTen = nearestMultipleOfTen(a);

  print("Nearest Multiple of Ten is $multipleOfTen");
}
