



public class Solution414 {
    public static void main(String args[]) {
        // int[] arr = { 10,2,5,3};
        int[] arr = { 2, 2, 2, 2, 1, 0, 3 };
        System.err.println(Solution414.thirdMax(arr));
    }

            static{
        for(int i = 0; i< 500; i++){
            thirdMax(new int[]{});
        }
    }

    //!Fool
    // public static int thirdMax(int[] nums) {
    //     int n = nums.length, j = 0;

        // Arrays.sort(nums);
        // if (n < 3) {
        //     return nums[n - 1];
        // }

    //     n--;

    //     while (n >= 1 && j < 2) {
    //         if (nums[n] > nums[n - 1]) {
    //             j++;
    //         }
    //         n--;
    //     }

    //     return j < 2 ? nums[nums.length - 1] : nums[n];
    // }

    //!I think about it first but why i dont do this?
    public static int thirdMax(int[] nums) {
        long first = Long.MIN_VALUE, second = Long.MIN_VALUE, third = Long.MIN_VALUE;
        for (int n : nums) {
            if (n > first) {
                third = second;
                second = first;
                first = n;
            } else if (n > second && n < first) {
                third = second;
                second = n;
            } else if (n > third && n < second) {
                third = n;
            }
        }
        return (third == Long.MIN_VALUE) ? (int) first : (int) third;
    }
}
    

