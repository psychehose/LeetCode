impl Solution {
    pub fn gcd_of_strings(str1: String, str2: String) -> String {
        if format!("{}{}", &str1[..], &str2[..]) != format!("{}{}", &str2[..], &str1[..]) {
            return "".to_string();
        }
        
        let gcd_len = find_gcd(str1.chars().count(), str2.chars().count());
        return str1[..gcd_len].to_string();
    }
}
pub fn find_gcd(a: usize, b: usize) -> usize {
    if b == 0 { 
        return a;
    }
    else { 
        return find_gcd(b, a%b);
    }
}

// MARK: - initial sol

// pub fn gcd_of_strings(str1: String, str2: String) -> String {
        
//         let mut gcds = String::new();
//         let mut iter_count = 0;
        
//         if str1.chars().count() >= str2.chars().count() {
//             iter_count = str2.chars().count();
//         }
//         else {
//             iter_count = str1.chars().count();
//         }
        
//         for i in 0..iter_count {
//             if &str1[..i+1] != &str2[..i+1] {
//                 break;
//             }
            
//             else {
//                 if str1.chars().count() % (i+1) == 0 && str2.chars().count() % (i+1) == 0 {
//                     let mut res1 = String::from("");
//                     let mut res2 = String::from("");
//                     for j in 0..(str1.chars().count() / (i+1)) {
//                         res1 = format!("{}{}",res1, &str1[..i+1].to_string());
//                     }
                    
//                     for j in 0..(str2.chars().count() / (i+1)) {
//                         res2 = format!("{}{}",res2, &str2[..i+1].to_string());
//                     }
                    
//                     if res1 == str1 && res2 == str2 {
//                         gcds = str1[..i+1].to_string();
//                     }
                    
//                 }   
//             }
//         }
        
//         gcds
        
//     }