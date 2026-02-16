void main() {
  var nums = [1, 3, 5, 6], target = 7;
  print(searchInsert(nums, target));
}

int searchInsert(List<int> nums, int target) {
  int left = 0;
  int right = nums.length - 1;

  while (left <= right) {
    int mid = left + ((right - left) >> 2);

    if (nums[mid] == target) {
      return mid;
    } else if (nums[mid] < target) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }

  return left;
}

int nBynarySearch(List<int> nums, int target) {
  int arraySize = nums.length;
  int n = 3;
  int powerOfTwo = 2;
  int i, step1, step2 = powerOfTwo, times;

  for (step1 = 1; step1 < arraySize; step1 *= n) ;
  for (i = 0; step1 > 0; step1 ~/= n) {
    if (i + step1 < arraySize && nums[i + step1] <= target) {
      for (times = 1; step2 > 0; step2 >>= 1)
        if (i + (step1 * (times + step2)) < arraySize &&
            nums[i + (step1 * (times + step2))] <= target)
          times += step2;

      step2 = powerOfTwo;

      i += times * step1;
    }
  }
  return nums[i] == target ? i : -1;
}
