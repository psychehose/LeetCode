class Solution {
    
    
    func searchInsertIndex(_ nums: [Int], _ target: Int) -> Int {
        var leftIndex = 0
        var rightIndex = nums.count - 1
        var mid = 0
       
       if nums.count == 0 {
           return 0
       }
        
        while leftIndex <= rightIndex {
            mid = leftIndex + (rightIndex - leftIndex) / 2
            
            if target == nums[mid] {
                return mid
            }
            else if target < nums[mid] {
                rightIndex = mid - 1
            }
            
            else {
                leftIndex = mid + 1
            }
        }
        return leftIndex
    }

    
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var resultArray: [Int] = []
        var numsCopy = nums

        
        while numsCopy.count > 1 {
            var head = numsCopy.removeFirst()
            var tail = numsCopy.removeLast()
            
            var headSquare = head * head
            var tailSquare = tail * tail
            
            var t1 = searchInsertIndex(resultArray, headSquare)
            
            resultArray.insert(headSquare, at: t1)
            
            var t2 = searchInsertIndex(resultArray, tailSquare)
            resultArray.insert(tailSquare, at: t2)
        }
        if numsCopy.count == 1 {
            var lastSquare = numsCopy[0] * numsCopy[0]
            var t3 = searchInsertIndex(resultArray, lastSquare)
            resultArray.insert(lastSquare, at: t3)
        }
        return resultArray
    }
    
}

// MARK: -


/*

양쪽에서 꺼내서 제곱을 하고 적절한 인덱스를 찾아서 insert 해주기

while 렝쓰가 0이 될 때까지 {
    양쪽에서 꺼내서 제곱하고,
    적절한 위치 찾기 -> binary Search
    insert - > insert
}

 필요한 함수
    양쪽에서 꺼내기 removeFirst, removeLast

*/