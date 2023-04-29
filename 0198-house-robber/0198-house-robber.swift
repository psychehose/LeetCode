class Solution {

    func rob(_ nums: [Int]) -> Int {
        
        var len = nums.count
        

        if len == 1 {
            return nums[0]
        }

        if len == 2 {
            return max(nums[0], nums[1])
        }
        
        

        

        var initial = max(nums[0], nums[1])
        var hash: [Int:Int] = [0: nums[0], 1: initial]
        
        var isContainLast: Bool = initial == nums[1]

        
        for i in 2 ..< len {
            if !isContainLast {
                hash[i] = hash[i-1]! + nums[i]
                isContainLast = true
            }
            
            else {
                // compare
                if hash[i-2]! + nums[i] >= hash[i-1]! {
                    hash[i] = hash[i-2]! + nums[i]
                    isContainLast = true
                }
                else {
                    hash[i] = hash[i-1]
                    isContainLast = false
                }
            }
        }
        
        
        // print(hash)
        
        return hash[nums.count - 1]!
        
    }
}

// MARK: - Notes

/*
    인접하지 않는 원소들로 만들 수 있는 최대값 구하기
    어떤 배열이 n-1개의 원소를 가지고 있는 배열이 있다고 가정할 때 최댓값을 f(n-1)이라고 가정하자
    이 때 원소가 x가 추가되면 f(n)의 값은 어떻게 될까?

    경우는 두가지

    1. f(n-1)이 n-1번째 값을 가지고 있는 경우:
        f(n) = f(n-1)일까? 아닐 수 있음.
            f(n-1)   !f(n-1) + x


    2. f(n-1)이 n-1번째 값을 가지고 있지 않는 경우 - 자명한듯?
        f(n) = f(n-1) + x

        [2,1,1,2,0]

f(1) = 2
f(2) = 2

f(3) = 3 -> f(2)가 2번째 요소를 포함하는가? -> No -> 그냥 더하기
f(4) = 4 f(3)가 3번째 요소를 포함하는가 YES -> 다시 계산해주기. f(2) + 추가된 요소 vs f(3)

f(5) = 4




*/