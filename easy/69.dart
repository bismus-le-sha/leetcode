void main() {
  var x = 562464195;
  Solution solution = Solution();
  print(solution.mySqrt(x));
}

class Solution {
  int mySqrt(int x) {
    if (x == 0) {
      return 0;
    }

    int l = 0, r = x, close = 0;

    while (l <= r) {
      int mid = l + (r - l) ~/ 2;
      int sqmid = mid * mid;
      if (sqmid == x) {
        return mid;
      }
      if (sqmid > x) {
        r = mid - 1;
      }
      if (sqmid < x) {
        close = mid;
        l = mid + 1;
      }
    }

    return close;
  }
}
