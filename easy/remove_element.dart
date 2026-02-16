void main() {
  var nums = [0, 1, 2, 2, 3, 0, 4, 2];
  print(removeElement(nums, 2));
}

//My solution
int removeElement(List<int> nums, int val) {
  var writIndex = 0;
  for (final elem in nums) {
    if (elem != val) {
      nums[writIndex] = elem;
      writIndex++;
    }
  }
  return writIndex;
}
