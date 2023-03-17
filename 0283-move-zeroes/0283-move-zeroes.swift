class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        
        
        guard 
            var nonzeroLastIndex = nums.lastIndex(where: { $0 != 0 })
        else { 
            return 
        }
        
        var len = nums.count - 1
        
        var rightZeroArray: Array<Int> = Array(repeating: 0, count: len - nonzeroLastIndex)
        var leftZeroArray: Array<Int> = []
    
        
        for i in 0 ... nonzeroLastIndex {
            if nums[i] == 0 {
                leftZeroArray.append(0)
            }
        }
        
        // 모든 0 제거
        
        nums.removeAll(where: {$0 == 0})
        
        // 더하기
        
        nums += leftZeroArray
        nums += rightZeroArray
        
        
        
    
        
        
        
        
    }
}

// MARK:- Sol

/*

ex) [0,0,1]

lastIndex = 2

nums[cursor] = 0 이므로 
nums.remove(at: cursor)
nums.append(0)

lastIndex

0 1 0

*/
