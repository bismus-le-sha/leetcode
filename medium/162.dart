void main(List<String> args) {
  var nums = [1, 2, 1, 3, 5, 6, 4];
  Solution solution = MyFirstSolution();
  print(solution.findPeakElement(nums));
}

abstract interface class Solution {
  int findPeakElement(List<int> nums);
}

class MyFirstSolution extends Solution {
  int findPeakElement(List<int> nums) {
    int l = -1, r = nums.length;

    if (r == 1) return r - 1;

    while (r - l > 1) {
      int mid = l + (r - l) ~/ 2;
      print(mid);
      if (mid == nums.length - 1) return mid;

      if (nums[mid] > nums[mid + 1])
        r = mid;
      else
        l = mid;
    }
    return r;
  }
}

class CleanSolution extends Solution {
  int findPeakElement(List<int> nums) {
    int n = nums.length;
    int l = -1, r = n - 1; // up(l)=true, up(r)=false

    while (r - l > 1) {
      int m = l + ((r - l) >> 1);
      if (nums[m] < nums[m + 1]) {
        l = m;
      } else {
        r = m;
      }
    }
    return r;
  }
}
