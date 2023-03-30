class Solution {
    

    func lengthOfLongestSubstring(_ s: String) -> Int {
        
        if s.count == 0 || s.count == 1 {
            return s.count
        }

        var maxLength = 0
        var substring: [Character] = []
        let charArray = Array(s)
        
        for i in 0 ..< charArray.count {
            if let index = substring.firstIndex(of: charArray[i]) {
                substring.removeFirst(index + 1)
            }
            
            substring.append(charArray[i])
            
            print(substring)
            maxLength = max(maxLength, substring.count)
        }
        
        
        return maxLength
        
        
        
    }
}

