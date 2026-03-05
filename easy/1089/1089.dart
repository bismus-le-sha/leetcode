void main() {
  var arr = [1, 0, 2, 3, 0, 4, 5, 0];
  Solution solution = Solution();
  solution.duplicateZeros(arr);
  print(arr);
}

class Solution {
  void duplicateZeros(List<int> arr) {
    for (int i = 0; i < arr.length; i++) {
      if (arr[i] == 0) {
        arr.insert(i + 1, 0);
        arr.removeLast();
        i++;
      }
    }
  }
}
