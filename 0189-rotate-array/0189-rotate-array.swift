class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        
        var numsCopy = nums
        
        if k == 0 {
            return
        }

        for index in 0 ..< k {
            var last = nums.removeLast()
            nums.insert(last, at: 0)
        }
    }
}