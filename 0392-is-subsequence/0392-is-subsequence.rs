use std::collections::VecDeque;

impl Solution {
    pub fn is_subsequence(s: String, t: String) -> bool {
        
        let mut cur = 0;
        
        let mut s_deque_char: VecDeque<char> = s.chars().collect();
        let t_vec_char: Vec<char> = t.chars().collect();
        
        let mut is_match = false;
        
        while let Some(front) = s_deque_char.pop_front() {
            is_match = false;
            for i in cur..t_vec_char.len() {
                if front == t_vec_char[i] {
                    is_match = true;
                    cur = i+1;
                    break;
                }
            }
            
            if !is_match {
                return false;
            }
            
        }
        
        true
    }
}