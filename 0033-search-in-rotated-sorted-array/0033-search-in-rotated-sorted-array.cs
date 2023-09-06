public class Solution {
    public int Search(int[] nums, int target) {
        
        
        int l = 0;
        int r = nums.Length - 1;
        
        while(l<=r) {

            int mid = (l+r) / 2;

            if(nums[mid] == target) {
                return mid;
            }

            if(nums[l] <= nums[mid]) {
                // left portion 정렬되어 있음
                
                if(target < nums[l] || target > nums[mid]) {
                    l = mid + 1;
                } else {
                    r = mid - 1;
                }
            }

            else {
                // right portion이 정렬
                
                if(target > nums[r] || target < nums[mid]) {
                    r = mid - 1;
                } else {
                    l = mid + 1;
                }
            }
        }
        
        
        return -1;
        
        
        
    }
}