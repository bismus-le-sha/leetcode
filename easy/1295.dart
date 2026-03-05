void main() {
  var nums = [12, 345, 2, 6, 7896];
  SlowSolution solution = SlowSolution();
  print(solution.findNumbers(nums));
}

abstract interface class Solution {
  int findNumbers(List<int> nums);
}

class SlowSolution implements Solution {
  @override
  int findNumbers(List<int> nums) {
    int ans = 0;
    for (final elem in nums) {
      if (elem.toString().length % 2 == 0) {
        ans++;
      }
    }
    return ans;
  }
}

class GoodSolution implements Solution {
  @override
  int findNumbers(List<int> nums) {
    int ans = 0;
    for (final elem in nums) {
      var element = elem; //чтобы не перезаписывать значение в массив
      int digit = 0;

      while (element > 0) {
        digit++;
        element ~/= 10;
      }

      if (digit % 2 == 0) {
        ans++;
      }
    }
    return ans;
  }
}
