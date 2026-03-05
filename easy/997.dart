void main() {
  var nums = [-4, -1, 0, 3, 10];
  Solution solution = FastSolution();
  print(solution.sortedSquares(nums));
}

abstract interface class Solution {
  List<int> sortedSquares(List<int> nums);
}

class FirstSolution implements Solution {
  @override
  List<int> sortedSquares(List<int> nums) {
    for (var i = 0; i < nums.length; i++) {
      nums[i] *= nums[i];
    }
    nums.sort();
    return nums;
  }
}

class FastSolution implements Solution {
  @override
  List<int> sortedSquares(List<int> nums) {
    final int n = nums.length;
    int l = 0, r = n - 1, i = n - 1;
    List<int> ans = List.filled(nums.length, 0);
    while (l <= r) {
      final int x = nums[l] * nums[l], y = nums[r] * nums[r];
      if (x > y) {
        ans[i] = x;
        l++;
      } else {
        ans[i] = y;
        r--;
      }
      i--;
    }
    return ans;
  }
}

class AnotherSolution implements Solution {
  @override
  List<int> sortedSquares(List<int> nums) {
    int i = 0;
    int j = nums.length - 1;
    var result = List<int>.filled(nums.length, 0, growable: false);

    for (int index = nums.length - 1; index >= 0; index--) {
      int squareL = nums[i] * nums[i];
      int squareR = nums[j] * nums[j];

      if (squareL < squareR) {
        result[index] = squareR;
        j--;
      } else {
        result[index] = squareL;
        i++;
      }
    }

    return result;
  }
}
