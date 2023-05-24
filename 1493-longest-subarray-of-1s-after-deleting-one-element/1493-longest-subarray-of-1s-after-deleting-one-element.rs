impl Solution {
    pub fn longest_subarray(nums: Vec<i32>) -> i32 {
        
        use std::cmp;

        if !nums.contains(&0) {
            return (nums.len() - 1) as i32;
        }

        let mut left = 0;
        let mut right = 0;
        let mut zeros = 0;
        let mut res = 0;

        while right < nums.len() {
            if zeros < 2 {
                if nums[right] == 0 { zeros += 1; }
                right += 1;
            }

            else {
                if nums[left] == 0 { zeros -= 1;}
                left += 1;
            }
            
            // res
            
            if zeros != 2 {
                let len = (right - left - 1) as i32;
                
                // println!("{}", len);
                res = cmp::max(res, len);
            }
        }
        
        res as i32
    }
    
    
}

// zeros 가 2를 넘으면 안됨

// zero가 2 미만인 경우
// right를 이동 시켜야함.
// nums[right]가 == 0 인 경우에 zeros를 +=1 해줌


// 2 이상인 경우
// left를 이동시켜야함
// nums[left] == 0 인 경우에 zeros -= 1 해주면 됨.


// 1인 경우