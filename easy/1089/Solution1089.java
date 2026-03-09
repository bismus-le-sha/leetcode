import java.util.Arrays;

class Solution1089 {

    public static void main(String args[]) {
        int[] arr = { 1, 0, 2, 3, 0, 4, 5, 0 };
        // int[] arr = { 8,4,5,0,0,0,0,7 };
        Solution1089 solution = new Solution1089();
        solution.cleanDuplicateZeros(arr);
        for (int elem : arr) {
            System.out.println(elem );
        }
    }
    
    public void rawDuplicateZeros(int[] arr) {
        final int length = arr.length;
        var list = new int[length];
        int j = 0, i = 0;
        while (j < length && i < length) {

            if (arr[i] == 0) {
                list[j] = 0;
                if (j < length - 1) {
                    list[j + 1] = 0;
                    j++;
                }

            } else {
                list[j] = arr[i];

            }
            i++;
            if (j < length) {
                j++;
            }

        }

        System.arraycopy(list, 0, arr, 0, length);
    }
    
    public void cleanDuplicateZeros(int[] arr) {

        if (arr == null || arr.length == 0)
            return;

        int n = arr.length;
        int[] copy = Arrays.copyOf(arr, n);

        int i = 0, j = 0;

        while (j < n) {
            if (copy[i] == 0) {
                arr[j++] = 0;
                if (j < n)
                    arr[j++] = 0;
            } else {
                arr[j++] = copy[i];
            }
            i++;
        }

    }

}