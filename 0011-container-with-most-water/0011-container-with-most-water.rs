use std::cmp;
impl Solution {
    pub fn max_area(height: Vec<i32>) -> i32 {
        
        
        // max width
        
        let mut left = 0;
        let mut right = height.len() - 1;

        
        let mut width = (cmp::min(height[right], height[left])) * (right - left) as i32;
        
        while left < right {
            if height[left] <= height[right] {
                left += 1;
            } else {
                right -= 1;
            }

            let new_w = (cmp::min(height[right], height[left])) * (right - left) as i32;
            width = cmp::max(width, new_w);
        }
        
        
        width
    }
}