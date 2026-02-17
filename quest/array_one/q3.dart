void main() {
  var nums = [1, 1, 0, 1, 1, 1];
  var solution = Solution();
  print(solution.findMaxConsecutiveOnes(nums));
}

class Solution {
  int findMaxConsecutiveOnes(List<int> nums) {
    int ans = 0;
    int temp = 0;

    for (int i = 0; i < nums.length; i++) {
      if (nums[i] == 1) {
        temp++;
        if (ans < temp) {
          ans = temp;
        }
      } else {
        temp = 0;
      }
    }

    return ans;
  }
}
