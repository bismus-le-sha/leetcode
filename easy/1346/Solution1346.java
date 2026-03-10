public class Solution1346 {
    
    public static void main(String args[]) {
        // int[] arr = { 10,2,5,3};
        int[] arr = { 0,-2,2};
        Solution1346 solution = new Solution1346();
        System.err.println(solution.easyCheckIfExist(arr));
    }
    
    public boolean easyCheckIfExist(int[] arr) {
        final int length = arr.length;
        for (int i = 0; i < length; i++) {
            for (int j = 0; j < length; j++) {
                if (arr[i] == arr[j] * 2 && i != j) {
                    return true;
                }
            }
        }
        return false;
    }
    
        public boolean fastCheckIfExist(int[] arr) {
        boolean[] seen = new boolean[2001];

        for (int i=0; i<arr.length; i++) {
            if (arr[i]*2 >= -1000 && arr[i]*2 <= 1000 && seen[arr[i] * 2 + 1000]) return true;
            if (arr[i]%2==0 && seen[arr[i]/2 + 1000]) return true;
            seen[arr[i] + 1000] = true;
        }
        return false;
    }
}
