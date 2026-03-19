public class Solution278 {
    
            public static void main(String args[]) {

        int n = 5;

        System.err.println(Solution278.firstBadVersion(n));
    }

    public static int firstBadVersion(int n) {
        int start=0, end=n;
        while(end-start>1){
            int mid=start+(end-start)/2;
            if(isBadVersion(mid))  end=mid;
            else  start=mid;
        }
        return end;
    }
}
