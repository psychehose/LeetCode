class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        
        var result: [Int] = []
        var numbersCopy = numbers
        var lastIndex = numbers.count - 1

        while var lastValue = numbersCopy.popLast() {
            
            if let indexs = addTwo((lastIndex, lastValue), numbersCopy, target) {
                result = indexs
                break
            }
            
            lastIndex -= 1
            
        }
        
        return result
    }
    

    // last: (index, value)
    
    func addTwo(_ last: (Int, Int), _ nums: [Int], _ target: Int) -> [Int]? {
        
        var result: [Int] = []

        for (i, num) in nums.enumerated() {
            if target == num + last.1 {
                result.append(i + 1)
                result.append(last.0 + 1)

                return result
            }
        }
        
        
        return nil
    } 
    
}


// 순열을 쓰고 싶다..