class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var leftIndex = 0
        var rightIndex = nums.count - 1
        var mid = 0
        var lastIndex = 0
        
        if nums[0] >= target {
            return 0
        }
        if nums[rightIndex] < target {
            return rightIndex + 1
        }
        
        
        while leftIndex <= rightIndex {
            mid = leftIndex + (rightIndex - leftIndex) / 2
            
            if target == nums[mid] {
                return mid
            }
            
            else if target < nums[mid] {
                rightIndex = mid - 1
                lastIndex = mid
            }
            
            else {
                leftIndex = mid + 1
                lastIndex = mid
            }
        }
        
     
        // lastIndex 여기에서 어떻게 잘 넣어줘야할까의 문제   
        
        print("lastIndex ==", lastIndex)
        
        if lastIndex == 0 {
            if nums[lastIndex] >= target {
                return  0
            } else {
                return 1
            }
        }
        
        
        else {
            if nums[lastIndex] > target {
                if nums[lastIndex - 1] < target {
                    return lastIndex
                }
                return lastIndex - 1
            } 
            else {
              
                return lastIndex + 1
            }
        }
    }
}