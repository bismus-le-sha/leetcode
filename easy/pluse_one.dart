void main() {
  var digits = [9, 9, 9, 9, 9, 9];
  print(plusOne(digits));
}

// List<int> plusOne(List<int> digits) {
//   int numb = int.parse(digits.join());
//   numb += 1;
//   return numb.toString().split('').map(int.parse).toList();
// }

List<int> plusOne(List<int> digits) {
  var needOne = false;
  for (int i = digits.length - 1; i >= 0; i--) {
    if (digits[i] < 9) {
      digits[i] += 1;
      return digits;
    }
    digits[i] = 0;
    needOne = true;
  }
  if (needOne) digits.insert(0, 1);

  return digits;
}
