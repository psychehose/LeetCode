impl Solution {
    pub fn can_place_flowers(flowerbed: Vec<i32>, n: i32) -> bool {
        let mut n = n;
        let mut flowerbed = flowerbed;
        // index = 3?
        
        if n == 0 {
            return true
        }
        if flowerbed.len() == 1 {
            return flowerbed[0] == 0;
        }
        
        for i in 0..flowerbed.len() {
            if n == 0 {
                return true
            }
            if flowerbed[i] == 0 {
                
                if i == 0 {
                    if flowerbed[i+1] == 0 {
                        n = n-1;
                        flowerbed[i] = 1;   
                    }
                }
                else if i == flowerbed.len()-1 {
                    if flowerbed[i-1] == 0 {
                        n = n-1;
                        flowerbed[i] = 1;
                    }
                }
                
                else {
                    if flowerbed[i-1] == 0 && flowerbed[i+1] == 0 {
                        n = n-1;
                        flowerbed[i] = 1;
                    }
                }
            }
            
        }
        
        
        return n == 0;
        
        
        
    }
}