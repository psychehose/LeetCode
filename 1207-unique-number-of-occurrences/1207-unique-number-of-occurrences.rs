impl Solution {
    pub fn unique_occurrences(arr: Vec<i32>) -> bool {
        use std::collections::HashMap;
        use std::collections::HashSet;
        use std::iter::FromIterator;
        
        let mut hashmap: HashMap<i32, i32> = HashMap::new();
        
        for num in arr {
            let count = hashmap.entry(num).or_insert(0);
            *count += 1;
        }

        let hashset: HashSet<i32> = hashmap.values().copied().collect();
        
        hashset.len() == hashmap.len()
    }
}