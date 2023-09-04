public class Solution {
    public IList<IList<int>> ThreeSum(int[] nums) {
        
        HashSet<int> set = new HashSet<int>();
        
        // Sort
        nums = nums.OrderBy(i=>i).ToArray();
        
        List<int[]> res = new List<int[]>();
        
        for (int i = 0; i < nums.Length - 2; i++) {
            if(set.Contains(nums[i])) {
                continue;
            }

            set.Add(nums[i]);
            
            int first = nums[i];
            int left = i+1;
            int right = nums.Length - 1;

            while(left < right) {
                
                int threesum = first + nums[left] + nums[right];
                if (threesum == 0) {
                    
                    int[] arr = new int[] { first, nums[left], nums[right] };
                    
                    res.Add(arr);

                    left++;
                    while(nums[left] == nums[left-1] && left < right) {
                        left++;
                    }

                } else if(threesum > 0) {
                    right--;
                } else {
                    left++;
                }
            }
        }
        
        return res.ToArray();
    }
}