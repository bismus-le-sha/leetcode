void main() {
  var nums = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4];
  print(removeDuplicates(nums));
}

//My solution
// int removeDuplicates(List<int> nums) {
//   Set<int> uniq = {};
//   uniq.addAll(nums);
//   return uniq.length;
// }

//Best solution
int removeDuplicates(List<int> nums) {
  int nextWriteIndex = 1;
  for (int i = 1; i < nums.length; i++) {
    if (nums[i] != nums[i - 1]) {
      nums[nextWriteIndex] = nums[i];
      nextWriteIndex++;
    }
  }
  return nextWriteIndex;
}
