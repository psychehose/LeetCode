class Solution {
    func reverseWords(_ s: String) -> String {
        if s.count == 1 { return s }
        var result = ""
        var scopy = s

        
        while !scopy.isEmpty {
            guard var right = (scopy.firstIndex(where: { $0 == " "})) else {
                return result + scopy.reversed()
                
            }
            var temp = scopy[scopy.startIndex ..< right]
            result += temp.reversed()
            result += " "
            scopy.removeSubrange(scopy.startIndex ... right)
            
        }
        

        
        return result

        
    }
}

// MARK: - 

/*

공백을 기준으로 생각하기.


*/