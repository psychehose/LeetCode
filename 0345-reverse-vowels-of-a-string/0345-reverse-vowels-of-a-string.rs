use std::collections::HashMap;

impl Solution {
    pub fn reverse_vowels(s: String) -> String {
        
        let mut s: Vec<char> = s.chars().collect();
        let mut deq: Vec<char> = Vec::new();
        let hash = HashMap::from([
            ('a', true),
            ('e', true),
            ('i', true),
            ('o', true),
            ('u', true),
            ('A', true),
            ('E', true),
            ('I', true),
            ('O', true),
            ('U', true)
        ]);

        for c in &s {
            if hash.contains_key(&c) {
                deq.push(*c);
            }
        }

        for i in 0..s.len() {
            if hash.contains_key(&s[i]) {
                let last_element = (deq.pop().unwrap());
                s[i] = last_element;
            }
        }
        
        let s: String = s.into_iter().collect();
        return s;
        
    }
}