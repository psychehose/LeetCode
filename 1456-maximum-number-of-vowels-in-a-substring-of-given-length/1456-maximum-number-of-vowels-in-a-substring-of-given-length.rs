impl Solution {
    pub fn max_vowels(s: String, k: i32) -> i32 {
        use std::cmp;
        
        let k = k as usize;
        let mut vowel_count = 0;

        // Set up
        for i in 0..k {
            let c = &s[i..i+1];
            if is_vowel(c) {
                vowel_count += 1;
            }
        }
        
        let mut max_count = vowel_count;
        
        for i in 0..(s.chars().count()) - k {
            let left = &s[i..i+1];
            let right =  &s[i+k..i+k+1];
            
            if is_vowel(left) { vowel_count -= 1 }
            if is_vowel(right) { vowel_count += 1}
            
            max_count = cmp::max(vowel_count, max_count);
        }
        
        max_count
        
    }
}

pub fn is_vowel(c: &str) -> bool {
    if c == "a" || c == "e" || c == "i" || c == "o" || c == "u" {
        return true;
    }

        false
}