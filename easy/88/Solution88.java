

public class Solution88 {
    
    public static void main(String args[]) {
        int[] nums1 = {5,6,7,0,0,0}, nums2={1,2,3};
        int m = 3,  n = 3;

        Solution88 solution = new Solution88();
        solution.rawMerge(nums1, m, nums2, n);

        for (int elem : nums1) {
            System.out.println(elem );
        }
    }
    
    public void rawMerge(int[] nums1, int m, int[] nums2, int n) {
        int length = nums1.length - 1;

        while (n > 0 && m > 0 && length > 0) {
            if (nums1[m - 1] < nums2[n - 1]) {
                nums1[length] = nums2[n - 1];
                n--;
            } else {
                nums1[length] = nums1[m - 1];
                m--;
            }
            length--;
        }

        if (n > 0) {
            while (length >= 0) {
                nums1[length] = nums2[length];
                length--;
            }
        }
    }
    
    public void merge(int[] nums1, int m, int[] nums2, int n) {

        int i = m - 1;
        int j = n - 1;
        int k = m + n - 1;

        while (j >= 0) {

            if (i >= 0 && nums1[i] >= nums2[j]) {
                nums1[k--] = nums1[i--];

            } else {
                nums1[k--] = nums2[j--];

            }

        }
    }
}
