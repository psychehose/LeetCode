impl Solution {
    pub fn max_operations(nums: Vec<i32>, k: i32) -> i32 {
        
        let mut nums = nums;
        let mut operation_count = 0;
        let mut left = 0;
        let mut right = nums.len() -1;

        nums.sort();
        
        if nums.len() == 1 { return 0; }
        
        
        while left < right {
            if nums[left] + nums[right]  == k {
                operation_count += 1;
                left += 1;
                right -= 1;
            }
            else if nums[left] + nums[right] < k {
                left += 1;
            }
            else {
                right -= 1;
            }
        }
        
        operation_count
    }
}