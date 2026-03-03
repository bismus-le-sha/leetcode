void main() {
  List<int> nums = [1, 2, 3, 12];

  Solution solution = MyFirstSolution();
  print(solution.minimumCost(nums));
}

abstract interface class Solution {
  int minimumCost(List<int> nums);
}

class MyFirstSolution implements Solution {
  @override
  int minimumCost(List<int> nums) {
    int summ = nums[0];
    nums.removeAt(0);
    nums.sort();
    return summ + nums[0] + nums[1];
  }
}

class FastSolusion implements Solution {
  @override
  int minimumCost(List<int> nums) {
    var first = nums[0];
    var second = nums[1];
    var third = nums[2];

    if (third < second) {
      (third, second) = (second, third);
    }

    for (int i = 3; i < nums.length; i++) {
      if (nums[i] < third) {
        third = nums[i];
        if (third < second) {
          (third, second) = (second, third);
        }
      }
    }

    return (first + second + third);
  }
}
