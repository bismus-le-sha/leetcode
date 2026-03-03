import 'dart:collection';
import 'dart:typed_data';

void main() {
  var ransomNote = "aa", magazine = "baa";
  Solution solution = FoolSolution();
  print(solution.canConstruct(ransomNote, magazine));
}

abstract interface class Solution {
  bool canConstruct(String ransomNote, String magazine);
}

//time complexity O(M)
//space complexity O(k)
class FoolSolution implements Solution {
  @override
  bool canConstruct(String ransomNote, String magazine) {
    var mapMagazine = HashMap<String, int>();
    for (final c in magazine.split('')) {
      mapMagazine[c] = (mapMagazine[c] ?? 0) + 1;
    }

    for (final c in ransomNote.split('')) {
      int curCount = mapMagazine[c] ?? 0;
      if (curCount == 0) {
        return false;
      }
      mapMagazine.update(c, (v) => v - 1);
    }
    return true;
  }
}

//time complexity O(M+N)
class FastSolution implements Solution {
  @override
  bool canConstruct(String ransomNote, String magazine) {
    final lettersCount = Uint16List(26);
    final aCharCodeUnit = 'a'.codeUnitAt(0);
    for (var i = 0; i < magazine.length; ++i) {
      ++lettersCount[magazine.codeUnitAt(i) - aCharCodeUnit];
    }
    for (var i = 0; i < ransomNote.length; ++i) {
      final index = ransomNote.codeUnitAt(i) - aCharCodeUnit;
      if (lettersCount[index] == 0) {
        return false;
      }
      --lettersCount[index];
    }
    return true;
  }
}
