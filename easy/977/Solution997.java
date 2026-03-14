public class Solution997 {
    public static void main(String args[]) {
        // int[] arr = { 10,2,5,3};
        int[] arr = {-10000,-9999,-7,-5,0,0,10000 };
        var ans = Solution997.sortedSquares(arr);

        for (int elem : ans) {
            System.out.println(elem);
        }
    }
    
    // static{
    //     for(int i = 0; i< 500; i++){
    //         sortedSquares(new int[]{});
    //     }
    // }
//demo
    public static int[] sortedSquares(int[] nums) {
        int j = 0, r=0, n = nums.length-1;
        int l = nums[j] * nums[j];

        if (n == 0) {
            nums[n] *= nums[n];
            return nums;
        }
   

         boolean isPositive = nums[n] >= 0;
         if (isPositive) {
             while (n > 0 && isPositive) {
                 r = nums[n] * nums[n];
                 isPositive = nums[n] >= 0;
                 if (l > r) {
                     nums[n] = l;
                     l = r;
                 } else {
                     nums[n] = r;
                 }
                 n--;
                 nums[j] = l;
             }
                j++;
        }
        
                while (n >= j) {
                    r = nums[n] * nums[n];
                    l = nums[j] * nums[j];
                    nums[j] = r;
                    nums[n] = l;
                               j++;
                    n--;
        }

        return nums;
    }

    // Two pointers — O(n) time, O(n) extra space (unavoidable for O(n))
    public static int[] twoPointerSquares(int[] nums) {
        int n = nums.length;
        int[] result = new int[n];
        int l = 0, r = n - 1, pos = n - 1;

        while (l <= r) {
            int lSq = nums[l] * nums[l];
            int rSq = nums[r] * nums[r];
            if (lSq > rSq) {
                result[pos--] = lSq;
                l++;
            } else {
                result[pos--] = rSq;
                r--;
            }
        }
        return result;
    }

    // Square + sort — O(n log n) time, O(1) extra space
    public static int[] inPlaceSquares(int[] nums) {
        for (int i = 0; i < nums.length; i++)
            nums[i] *= nums[i];
        java.util.Arrays.sort(nums);
        return nums;
    }

    //Only for positive
    //     public int[] sortedSquares(int[] nums) {
    //             int l = nums[0] * nums[0], n = nums.length;

    //     for(int i=n-1;i>0;i--)
    //     {
    //         int r = nums[i] * nums[i];

    //         if (l > r) {
    //             nums[i] = l;
    //             l = r;
    //         } else {
    //             nums[i] = r;
    //         }
    //     }
    //     nums[0] = l;
    //     return nums;
    // }
}
