public class Solution27 {
    public static void main(String args[]) {
        int[] nums = {2};
        int val = 3;

        Solution27 solution = new Solution27();
        solution.removeElement(nums, val);

        for (int elem : nums) {
            System.out.println(elem );
        }
    }
    
    public int rawRemoveElement(int[] nums, int val) {
        int length = nums.length;
        int k = 0;
        int[] ans = new int[length];
        int j = 0;
        for (int i = 0; i < length; i++) {
            if (nums[i] != val) {
                k++;
                ans[j++] = nums[i];
            }
        }
        System.arraycopy(ans, 0, nums, 0, length);
        System.err.println(k);
        return k;
    }
    
        public int removeElement(int[] nums, int val) {
        int p = 0;
        for(int i=0;i<nums.length;i++){
            if(nums[i]!= val){
                nums[p] = nums[i];
                p++;
            }
        }
        return p;
    }
    
}
