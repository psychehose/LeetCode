impl Solution {
    pub fn find_difference(nums1: Vec<i32>, nums2: Vec<i32>) -> Vec<Vec<i32>> {
        
        use std::collections::HashSet;
        use std::iter::FromIterator;
        
       let set_1: HashSet<i32> = nums1.into_iter().collect();
        let set_2: HashSet<i32> = nums2.into_iter().collect();
    
        let diff1 = set_1.difference(&set_2);
        let diff2 = set_2.difference(&set_1);

        let diff1 = Vec::from_iter(diff1.copied());
        let diff2 = Vec::from_iter(diff2.copied());
        
        vec![diff1,diff2]
    }
}