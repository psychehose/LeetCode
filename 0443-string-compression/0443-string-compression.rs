impl Solution {
    pub fn compress(chars: &mut Vec<char>) -> i32 {
        
        
        let mut res = String::from("");
        let mut current: char = chars[0];
        let mut count = 1;

        for index in 1..chars.len() {
            if current != chars[index] {
                
                if count == 1 {
                    res = format!("{}{}",res, current);
                } 
                else {
                    res = format!("{}{}{}",res, current, count.to_string());
                }
                
                current = chars[index];
                count = 1;
            }
            else {
                count += 1;
            }
        }

         if count == 1 {
             res = format!("{}{}",res, current);
        } 

        else {
            res = format!("{}{}{}",res, current, count.to_string());
        }

        *chars = res.chars().collect();
        res.len() as i32
    }
}