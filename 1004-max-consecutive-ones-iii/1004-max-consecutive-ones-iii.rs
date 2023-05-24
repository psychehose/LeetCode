impl Solution {
    pub fn longest_ones(nums: Vec<i32>, k: i32) -> i32 {
        
        use std::cmp;
        let mut res = 0;
        let mut flip = k;
        let mut left = 0;
        let mut right = 0;
        
        while right < nums.len() {
            if flip > 0 {
                if nums[right] == 0 {
                    flip -= 1;
                }
                right += 1;
            }
            else {
                if nums[right] == 0 {
                    if nums[left] == 0 { flip += 1;}
                    left += 1;
                }
                else {
                    right += 1;
                }
            }
            let mut length = (right - left) as i32;
            res = cmp::max(res, length);
        }
        res as i32
    }
}