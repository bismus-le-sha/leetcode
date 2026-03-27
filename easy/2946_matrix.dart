void main () {
  var  mat = [[1,2,3],[4,5,6],[7,8,9]], k = 4;
  Solution solution = Solution();
  print(solution.areSimilar(mat, k));
}


class Solution {
  bool areSimilar(List<List<int>> mat, int k) {
    int match_count = 0;
    int column_length = mat.length, row_length = mat[0].length;
    if (k % row_length ==0){
        return true;
    }

    for (int i = 0; i <row_length; i++){
        for (int j =0; j<column_length; j++){
            int shift_i = (i+k)%row_length;
            if (mat[j][i] == mat[j][shift_i]){
                match_count++;
            }
        }
    }

    return match_count == column_length*row_length;

  }
}