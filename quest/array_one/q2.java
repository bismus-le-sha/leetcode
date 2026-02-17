
import java.util.Arrays;

public class q2 {
public static void main(String[] args) {
		int  n = 3;
        int [] nums  = {2,5,1,3,4,7};
        Solution solution = new Solution();
        System.out.println(Arrays.toString(solution.shuffle(nums, n)));
	}
}

class Solution {
    public int[] shuffle(int[] nums, int n) {
        int [] array  = new  int[2*n];
        for (int i = 0; i<n*2-1; i+=2) {
            array[i] = nums[i/2];
            array[i+1] = nums[n+i/2];
        }
        return array;
    }

    public int[] cleanShuffle(int[] nums, int n) {
        int[] ans = new int[2 * n];
        int j = 0;
         for (int i = 0; i < n; i++) {
                ans[j++] = nums[i];       
                ans[j++] = nums[i + n];   
        }
        return ans;
    }
}