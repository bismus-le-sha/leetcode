public class Solution26 {
    
        public static void main(String args[]) {
        int[] nums = {0,0,1,1,1,2,2,3,3,4};

        Solution26 solution = new Solution26();
        solution.removeDuplicates(nums);

        for (int elem : nums) {
            System.out.println(elem );
        }
    }

    public int removeDuplicates(int[] nums) {
        int i=0;
        for(int j=i+1;j<nums.length;j++){
            if(nums[i]!=nums[j]){
                nums[++i]=nums[j];
            }
        }
        return i+1;
    }


}
