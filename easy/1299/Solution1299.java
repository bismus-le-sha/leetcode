public class Solution1299 {
     public static void main(String args[]) {
        // int[] arr = { 10,2,5,3};
        int[] arr = { 19,18,5,20,6,1};
        Solution1299 solution = new Solution1299();
        solution.replaceElements(arr);
        
            for (int elem : arr) {
            System.out.println(elem );
        }
    }
    
public int[] replaceElements(int[] arr) {
    int length = arr.length;
    int max = arr[length - 1];
    arr[length - 1] = -1;

    for (int i = length - 2; i >= 0; i--) {
        if (arr[i] > max) {
            int temp = arr[i];
            arr[i] = max;
            max = temp;
        } else {
            arr[i] = max;
        }
    }
    return arr;
    }
}
