void main() {
  var nums = [9];
  var target = 9;
  print(Solution().search(nums, target));
}

class Solution {
  int search(List<int> nums, int target) {
    int l = 0, r = nums.length - 1;

    while (l <= r) {
      int mid = l + (r - l) ~/ 2, c = nums[mid];
      if (c == target) {
        return mid;
      }
      if (c < target) {
        l = mid + 1;
      }
      if (c > target) {
        r = mid - 1;
      }
    }
    return -1;
  }
}
