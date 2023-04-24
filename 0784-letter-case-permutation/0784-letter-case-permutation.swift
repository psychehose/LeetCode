class Solution {
    func letterCasePermutation(_ s: String) -> [String] {
        
        if !(s.contains(where: { $0.isCased })) {
            return [s]
        }
        
        var res: [String] = []
        var charArray = Array(s)
        var check = Array(repeating: false, count: s.count)
        
        
        dfs(0, s.count, charArray, &res, &check)
        res = Array(Set(res))
        return res
        
    }
    
    func dfs(_ start: Int, _ end: Int, _ cArray: [Character], _ result: inout [String], _ check: inout [Bool]) {
        for i in start ..< end {
            // 소문자인 경우
            if cArray[i].isCased && cArray[i].isLowercase {

                result.append(String(cArray))

                if !check[i] {
                    check[i] = true
                    var arr = cArray
                    arr[i] = Character(arr[i].uppercased())
                    dfs(i, end, arr, &result, &check)
                    check[i] = false
                }
            }
            
            else if cArray[i].isCased && cArray[i].isUppercase {
                
                result.append(String(cArray))
                
                if !check[i] {
                    check[i] = true
                    var arr = cArray
                    arr[i] = Character(arr[i].lowercased())
                    dfs(i, end, arr, &result, &check)
                    check[i] = false
                }
                
                
            }
        }

    }
    
    
    
}



// MARK: - Sol

/*
*






*
*
*
*
*/