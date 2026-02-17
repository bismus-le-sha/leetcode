//Concatenation of Array

void main() {
  var nums = [1, 2, 1];

  Solution solution = SimpleSolution();
  print(solution.getConcatenation(nums));
}

abstract interface class Solution {
  List<int> getConcatenation(List<int> nums);
}

class SimpleSolution implements Solution {
  @override
  List<int> getConcatenation(List<int> nums) {
    var ans = List<int>.from(nums, growable: true);
    ans.addAll(nums);
    return ans;
  }
}

class FastSolution implements Solution {
  @override
  List<int> getConcatenation(List<int> nums) {
    int n = nums.length;

    List<int> ans = List.filled(2 * n, 0);

    for (var i = 0; i < n; i++) {
      ans[i] = nums[i];
      ans[i + n] = nums[i];
    }

    return ans;
  }
}
