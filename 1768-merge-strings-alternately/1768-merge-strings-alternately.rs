impl Solution {
    pub fn merge_alternately(word1: String, word2: String) -> String {
        let mut count = 0;
        let mut remains = String::new();
        let mut merged = String::new();

        if word1.chars().count() >= word2.chars().count() {
            count = word2.len();
            remains.push_str(&word1[count..]);
        } else {
            count = word1.len();
            remains.push_str(&word2[count..]);
        }

        for i in 0..count {
            merged.push_str(&word1.chars().nth(i).unwrap().to_string());
            merged.push_str(&word2.chars().nth(i).unwrap().to_string());
        }

        merged.push_str(&remains);

        return merged;
    }
}