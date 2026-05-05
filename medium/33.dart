void main(List<String> args) {
  var nums = [1, 3], target = 3;
  Solution solution = Solution();
  print(solution.search(nums, target));
}

class Solution {
  int search(List<int> nums, int target) {
    int n = nums.length;
    bool targetLeft =
        target >= nums[0]; // тут мы проверяем находится ли таргет в левой части

    int l = -1, r = n;
    while (r - l > 1) {
      int m = l + ((r - l) >> 1);
      bool midLeft =
          nums[m] >=
          nums[0]; // здесь мы проверяем находимся мы в левой части (разворотной) или уже попали в правую (монотонную)
      bool isTrue;
      if (midLeft == targetLeft) {
        // мы в левой час ти и таргет где-то в поворотной части или мы в правой части и таргет точно не в повопротной части
        isTrue =
            nums[m] >= target; // надо уточнить где таргет, справа или слева
      } else {
        isTrue = targetLeft; // target в левой части => true, иначе false
      }

      if (isTrue) {
        r = m; // true - сдвигаем правый указатель к центру
      } else {
        l = m; // false - сдвигаем левый указатель к центру
      }
    }

    return (r < n && nums[r] == target) ? r : -1;
  }
}
