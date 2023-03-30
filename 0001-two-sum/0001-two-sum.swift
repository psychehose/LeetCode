class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        
        var first: Int = 0 
        var last: Int = 0
        var result: [Int] = []
        
        for (index, val) in nums.enumerated() {
            for i in (index+1 ..< nums.count) {
                if (val + nums[i]) == target {
                    first = index
                    last = i
                    break
                }
            }
        }
        
        result.append(first)
        result.append(last)
        
        return result
    }
}