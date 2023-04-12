class Solution {
    func numSubarrayProductLessThanK(_ nums: [Int], _ k: Int) -> Int {
        if k == 0 {
            return 0
        }

        var endpoint = nums.count - 1
        var left = 0
        var right = 0
        var mulVal = nums[0]
        var result = 0

        while(true) {
            // Exit 조건
            if left == endpoint {
                if k > nums[left] {
                    result += 1
                }
                break
            }
            
            if mulVal < k {
                result += 1
                if right == endpoint {
                    left += 1
                    right = left
                    mulVal = nums[left]
                } 
                else {
                    right += 1
                    mulVal = mulVal * nums[right]
                }
            }
            else {
                left += 1
                right = left
                mulVal = nums[left]
            }
        }

        return result
    }
}

// MARK: - 

/*
left 0부터
통과하면 right


*/