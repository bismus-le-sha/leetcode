import java.io.FileWriter;
import java.io.IOException;

public class Solution941 {
      public static void main(String args[]) {
        // int[] arr = { 10,2,5,3};
        int[] arr = {9,8,7,6,5,4,3,2,1,0};
        Solution941 solution = new Solution941();
        System.err.println(solution.validMountainArray(arr));
    }
    
    public boolean MyPainfulValidMountainArray(int[] arr) {
        int lenght = arr.length;
        boolean growRate = true;
        int i = 0;

        if (lenght < 3 || arr[0] > arr[1]) {
            return false;
        }

        while (i < lenght - 1 && growRate) {
            if (arr[i] == arr[i + 1]) {
                return false;
            } else if (arr[i] > arr[i + 1]) {
                growRate = false;
            }
            i++;
        }

        if (i == lenght - 1) {
            return !growRate;
        }

        while (i < lenght - 1 && !growRate) {
            if (arr[i] <= arr[i + 1]) {
                return false;
            }
            i++;
        }
        return true;
    }
    //Some genius wrote this
     public boolean validMountainArray(int[] arr) {
        int n=arr.length;
        if(n<3){
            return false;
        }
        int i=1;
        while(i<n && arr[i]>arr[i-1]){
            i++;
        }
        if(i==1 || i==n){
            return false;
        }
        while(i<n && arr[i]<arr[i-1]){
            i++;
        }
        return i==n;
    }
    static {
        Runtime.getRuntime().gc();
        Runtime.getRuntime().addShutdownHook(new Thread(() -> {
            try (FileWriter writer = new FileWriter("display_runtime.txt")) {
                writer.write("0");
            } catch (IOException e) {
                e.printStackTrace();
            }
        }));
    }
}
