impl Solution {
    pub fn find_max_average(nums: Vec<i32>, k: i32) -> f64 {
        
        
        
        use std::cmp;
        let k = k as usize;
        let mut sum = 0;
        let mut max_sum = -100001;
        
        // init sum
        for i in 0..k {
            sum += nums[i];
        }

        max_sum = sum;
        
        
        if k == nums.len() {
            let k = k as f64;
            let max_sum = max_sum as f64;
            return (max_sum / k);
        }
        

        for i in 0 .. nums.len() - k {
            sum -= nums[i];
            sum += nums[i+k];
            
            max_sum = cmp::max(max_sum, sum);
        }

        let k = k as f64;
        let max_sum = max_sum as f64;
        (max_sum / k)
    }
}


// -28, -7