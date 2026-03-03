void main() {
  var accounts = [
    [1, 5],
    [7, 3],
    [3, 5],
  ];
  Solution solution = Solution();
  print(solution.maximumWealth(accounts));
}

class Solution {
  int maximumWealth(List<List<int>> accounts) {
    int max = 0;
    for (final elem in accounts) {
      var temp = elem.reduce((a, b) => a + b);

      if (temp > max) {
        max = temp;
      }
    }
    return max;
  }
}
