void main() {
  var num = 14;
  Solution solution = Solution();
  print(solution.numberOfSteps(num));
}

class Solution {
  int numberOfSteps(int num) {
    var count = 0;
    while (num > 0) {
      if (num.isOdd && num != 1) {
        count++;
      }
      num >>= 1;
      count++;
    }
    return count;
  }
}
