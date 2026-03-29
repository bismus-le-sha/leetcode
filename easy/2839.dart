void main() {
  var s1 = "abcd", s2 = "cdab", s3 = 'adcb', s4 = 'cbad';
  Solution solution = GreateSolution();
  print(solution.canBeEqual(s1, s4));
}

abstract interface class Solution {
  bool canBeEqual(String s1, String s2);
}

class FirstSolution implements Solution {
  bool canBeEqual(String s1, String s2) {
    for (int j = 0; j < 4; j++) {
      if (s1[j] != s2[j]) {
        if (s1[j] != s2[(j + 2) % 4]) {
          return false;
        }
      }
    }

    return true;
  }
}

class GreateSolution implements Solution {
  bool canBeEqual(String s1, String s2) {
    if (s1 == s2) return true;
    return (((s1[0] == s2[2] && s1[2] == s2[0]) ||
            (s1[0] == s2[0] && s1[2] == s2[2])) &&
        ((s1[1] == s2[3] && s1[3] == s2[1]) ||
            (s1[1] == s2[1] && s1[3] == s2[3])));
  }
}
