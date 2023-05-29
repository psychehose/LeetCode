impl Solution {
    pub fn largest_altitude(gain: Vec<i32>) -> i32 {
        
        use std::cmp;

        let mut highest = 0;
        let mut sum = 0;
        
        
        for g in gain {
            sum += g;
            highest = cmp::max(highest, sum);
        }
        
        highest
    }
}