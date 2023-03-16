class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var left = 0, right = nums.count - 1
        
        while left <= right {
            var pivot = left + (right - left) / 2
            if nums[pivot] == target {
                return pivot
            } else if nums[pivot] > target {
                right = pivot - 1
            } else {
                left = pivot + 1
            }
        }
        
        return left
    }
}