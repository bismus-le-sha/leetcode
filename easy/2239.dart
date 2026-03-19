void main() {
  var nums = [2, -1, 0, 1];
  Solution solution = Solution();
  print(solution.findClosestNumber(nums));
}

class Solution {
  int findClosestNumber(List<int> nums) {
    int min = nums[0];

    for (int i = 1; i < nums.length; i++) {
      if (nums[i].abs() < min.abs()) {
        min = nums[i];
      } else if (nums[i].abs() == min.abs()) {
        min = min > nums[i] ? min : nums[i];
      }
    }
    return min;
  }
}
