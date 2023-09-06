public class Solution {
    public int FindMin(int[] nums) {
        
        if (nums.Length == 1) { return nums[0]; }
        
        
        int low = 0;
        int high = nums.Length - 1;
        
        int min = int.MaxValue;

        while(low <= high) {
            
            
            int mid = (high + low) / 2;

            int left = nums[low];
            int right = nums[high];
            int midn = nums[mid];
            
            if(left > midn) {
                min = Math.Min(min, midn);
                high = mid - 1;
            } else if (right < midn) {
                min = Math.Min(min, right);
                low = mid + 1;
            } else if (left <= midn) {
                min = Math.Min(min, left);
                break;
            }
        }
        
        return min;
    }
}