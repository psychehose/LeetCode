class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var low = 0
        var high = nums.count - 1
        var mid: Int = 0

        while low <= high {
            mid = (low + high) / 2
            if low == high {
                break
            }

            if target == nums[mid] {
                return mid
            }

            else if target < nums[mid] {
                high = mid - 1
            }

            else {
                low = mid + 1
            }
        }
        if nums[low] == target {
            return low
        }

        return -1
    }
}
