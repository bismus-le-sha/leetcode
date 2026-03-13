import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class Solution448 {

        public static void main(String args[]) {
        // int[] arr = { 10,2,5,3};
        int[] arr = {13,8,5,3,20,12,3,20,5,16,9,19,12,11,13,19,11,1,10,2};
        // Solution448.findDisappearedNumbers(arr);
        
        // for (int elem : arr) {
        //     System.out.println(elem);
        // }
        System.err.println( Solution448.findDisappearedNumbers(arr));
    }

    static {
        for (int i = 0; i < 500; i++) {
            findDisappearedNumbers(new int[] {});
        }
    }
    //very bad naive apporch 
    // HashMap-based approach
    // Time complexity O(n) average
    // Space complexity O(n) extra space
    public static List<Integer> badFindDisappearedNumbers(int[] nums) {
        int n = nums.length;
        List<Integer> ans = new ArrayList<>();
        var map = new HashMap<Integer, Boolean>();

        for (int i = 0; i < n; i++) {
            map.put(nums[i], true);
        }

        for (int i = 0; i < n; i++) {
            if (!map.containsKey(i + 1)) {
                ans.add(i + 1);
            }
        }
        return ans;
    }
    
    //Better 
    // Better: mark seen values by negating in-place
    // Time complexity O(n)
    // Space complexity O(1) extra space (excluding output list)
    public static List<Integer> findDisappearedNumbers(int[] nums) {
        List<Integer> result = new ArrayList<>();

        for (int i = 0; i < nums.length; i++) {
            int index = Math.abs(nums[i]) - 1;

            if (nums[index] > 0) {
                nums[index] = -nums[index];
            }
        }

        for (int i = 0; i < nums.length; i++) {
            if (nums[i] > 0) {
                result.add(i + 1);
            }
        }

        return result;
    }
//
    // Cyclic sort approach
    // Time complexity O(n) amortized
    // Space complexity O(1) extra space (excluding output list)
     public List<Integer> bestFindDisappearedNumbers(int[] nums) {
        List<Integer> ans = new ArrayList<>();
        int i = 0;
        while (i < nums.length) {
            int correctIndex = nums[i] - 1;

            if (nums[i] != nums[correctIndex]) {
                int temp = nums[correctIndex];
                nums[correctIndex] = nums[i];
                nums[i] = temp;
            } else {
                i++;
            }
        }
        for(int j = 0;j<nums.length;j++){
            if(nums[j]-1 != j){
                ans.add(j+1);
            }
        }
        return ans;
    }
}
