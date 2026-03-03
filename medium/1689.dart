void main() {
  var n = '27346209830709182346';
  Solution solution = BestSolution();
  print(solution.minPartitions(n));
}

abstract interface class Solution {
  int minPartitions(String n);
}

class FirsFoolSolution implements Solution {
  @override
  int minPartitions(String n) {
    var arr = n.split('').map((elem) => int.parse(elem)).toList();
    arr.sort();
    return arr.last;
  }
}

class DontWorkForBigIntSolution implements Solution {
  @override
  int minPartitions(String n) {
    int max = 0;
    var numb = int.parse(n);

    while (numb > 10) {
      int temp = numb % 10;
      if (max < temp) {
        max = temp;
      }
      numb ~/= 10;
    }

    return max < numb ? numb : max;
  }
}

class BestSolution implements Solution {
  @override
  int minPartitions(String n) =>
      n.codeUnits.map((c) => c - 48).reduce((a, b) => a > b ? a : b);
}
