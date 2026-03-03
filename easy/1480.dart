void main() {
  var nums = [1, 2, 3, 4];
  Solution solution = Solution();
  print(solution.runningSum(nums));
}

//O(n)
class Solution {
  List<int> runningSum(List<int> nums) {
    for (int i = 1; i < nums.length; i++) {
      nums[i] += nums[i - 1];
    }
    return nums;
  }
}
