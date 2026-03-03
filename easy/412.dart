void main() {
  var n = 37;
  Solution solution = Solution();
  print(solution.fizzBuzz(n));
}

class Solution {
  List<String> fizzBuzz(int n) {
    List<String> ans = List<String>.filled(n, '');
    for (int i = 1; i < n + 1; i++) {
      if (i % 15 == 0) {
        ans[i - 1] = 'FizzBuzz';
      } else if (i % 3 == 0) {
        ans[i - 1] = 'Fizz';
      } else if (i % 5 == 0) {
        ans[i - 1] = 'Buzz';
      } else {
        ans[i - 1] = i.toString();
      }
    }
    return ans;
  }
}
