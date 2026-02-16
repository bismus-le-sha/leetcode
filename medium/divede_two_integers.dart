void main() {
  var dividend = 10, divisor = 3;

  print(divide(dividend, divisor));
  print(divideBitScan(dividend, divisor));
}

int divide(int dividend, int divisor) {
  const int INT_MAX = 2147483647;
  const int INT_MIN = -2147483648;

  if (dividend == INT_MIN && divisor == -1) return INT_MAX;

  bool negative = (dividend < 0) ^ (divisor < 0);

  int a = dividend.abs();
  int b = divisor.abs();
  int result = 0;

  while (a >= b) {
    int temp = b;
    int multiple = 1;

    while ((temp << 1) <= a) {
      temp <<= 1;
      multiple <<= 1;
    }

    a -= temp;
    result += multiple;
  }

  return negative ? -result : result;
}

int divideBitScan(int dividend, int divisor) {
  const int INT_MAX = 2147483647;
  const int INT_MIN = -2147483648;

  if (dividend == INT_MIN && divisor == -1) return INT_MAX;

  bool negative = (dividend < 0) ^ (divisor < 0);
  int a = dividend.abs();
  int b = divisor.abs();
  int result = 0;

  for (int i = 31; i >= 0; i--) {
    if ((a >> i) >= b) {
      result |= (1 << i);
      a -= (b << i);
    }
  }

  return negative ? -result : result;
}
