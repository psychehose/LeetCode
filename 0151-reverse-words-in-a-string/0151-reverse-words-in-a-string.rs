impl Solution {
    pub fn reverse_words(s: String) -> String {
        let mut reversed = String::from("");
        
        let mut vec: Vec<String> = s
            .split_whitespace()
            .map(|s| s.trim().parse().expect("err"))
            .collect::<Vec<_>>();
        
        for i in 0..vec.len() {
            let word = vec.pop().unwrap();
            if i == 0 {
                reversed = format!("{}{}", reversed, word);
            }
            else {
             reversed = format!("{} {}", reversed, word);   
            }
        }
        
        reversed
    }
}