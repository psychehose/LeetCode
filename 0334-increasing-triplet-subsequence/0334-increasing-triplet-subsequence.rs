impl Solution {
    pub fn increasing_triplet(nums: Vec<i32>) -> bool {
        let mut first = i32::MAX;
        let mut second = i32::MAX;
        
        
        
        for n in nums {
            if second < n {
                return true;
            }
            else if n > first && n < second {
                second = n;
            }
            else if n < first {
                first = n;
            }
        }
        
        false
        
    }
}