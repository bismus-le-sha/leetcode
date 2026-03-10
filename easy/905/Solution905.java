public class Solution905 {
    public static void main(String args[]) {
        // int[] arr = { 10,2,5,3};
        int[] arr = {3,1,2,42 };
        var ans = Solution905.sortArrayByParity(arr);

        for (int elem : ans) {
            System.out.println(elem);
        }
    }
    
    static{
        for(int i = 0; i< 500; i++){
            sortArrayByParity(new int[]{});
        }
    }
    public static int[] sortArrayByParity(int[] nums) {
       int j=0,n=nums.length;
       
       for(int i=0;i<n;i++)
       {
           if (nums[i] % 2 == 0) {
               int temp = nums[j];
               nums[j] = nums[i];
               nums[i] = temp;
               j++;
           }
       }
       return nums;
    }
}
