class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {

        var result: String = ""

        var initial = strs[0]

        if strs.count == 1 {
            return initial
        }
        for i in 0 ..< strs.count - 1 {
            result = common(initial, strs[i+1])

            initial = result
            
            if result == "" {
                return result
            }

        }

        return result
    }

    func common(_ str1: String, _ str2: String) -> String {

        var result: String = ""
        if str1.count >= str2.count {
            for (i,s) in str2.enumerated() {
                if s != str1[str1.index(str1.startIndex, offsetBy: i)] {
                    break
                }
                else {
                    result.append(s)
                }

            }            
            return result
        } 
        
        else {
            for (i,s) in str1.enumerated() {
                if s != str2[str2.index(str2.startIndex, offsetBy: i)] {
                    break
                }
                else {
                    result.append(s)
                }
            }            
            return result
        }
    }
}