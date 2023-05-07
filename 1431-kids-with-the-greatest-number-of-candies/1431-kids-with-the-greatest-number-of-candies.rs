impl Solution {
    pub fn kids_with_candies(candies: Vec<i32>, extra_candies: i32) -> Vec<bool> {
        let greatest_number = candies.iter().max().unwrap();
        let mut res: Vec<bool> = Vec::new();
        
        
        for i in 0..candies.len() {
            res.push(candies[i] + extra_candies >= *greatest_number);
        }
        
        return res;
    }
}