String multiplyStr(String s1, String s2) {
  int product = int.parse(s1) * int.parse(s2);
  return product.toString();
}




void main() {
  String s1 = "00123";
  String s2 = "4";

  String product = multiplyStr(s1, s2);

  print("The product is $product");
}
