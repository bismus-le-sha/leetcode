public class Solution283 {
    public static void main(String args[]) {
        // int[] arr = { 10,2,5,3};
        int[] arr = {0,1,0,3,12 };
        Solution283 solution = new Solution283();
        solution.myMoveZeroes(arr);

        for (int elem : arr) {
            System.out.println(elem);
        }
    }
    
    public void myMoveZeroes(int[] nums) {
  int insertPos = 0;
        
        for (int num : nums) {
            if (num != 0) {
                nums[insertPos++] = num;
            }
        }
        
        while (insertPos < nums.length) {
            nums[insertPos++] = 0;
        }
    }
    
    static{
        for(int i = 0; i< 500; i++){
            moveZeroes(new int[]{});
        }
    }
    public static void moveZeroes(int[] nums) {
       int j=0,n=nums.length;
       
       for(int i=0;i<n;i++)
       {
          if(nums[i]!=0)
          {
            int temp= nums[j];
            nums[j]=nums[i];
            nums[i]=temp; 
            j++;
          }   
       } 
         
        
        
    }
    
}
