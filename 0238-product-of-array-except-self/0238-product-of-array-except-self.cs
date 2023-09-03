public class Solution {
    public int[] ProductExceptSelf(int[] nums) {
        int len = nums.Length;
        
        int[] res = new int[len];
        
        int left = 1;
        
        for(int i = 0; i < len; i++) {
            if (i > 0) {
                left = left * nums[i-1];
            }
            
            res[i] = left;
        }
        
        int right = 1;
        
        for (int i = len - 1; i >= 0; i--)  {
            if (i < len - 1) {
                right = right * nums[i+1];
            }
            
            res[i] *= right;
        }
        
        return res;
    }
}