impl Solution {
    pub fn pivot_index(nums: Vec<i32>) -> i32 {
        let mut left: i32 = 0;
        let mut right: i32 = nums.iter().sum();
        
        
        for i in 0..nums.len() {
            right -= nums[i];
            
            if right == left {
                return i as i32;
            }
            
            left += nums[i];
        }
        
        return -1;
    }
}