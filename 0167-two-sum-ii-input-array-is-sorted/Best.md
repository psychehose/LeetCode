```swift
class Solution {
    // - Complexity:
    //   - time: O(n), where n is the length of the numbers.
    //   - space: O(1), only constant space is used.
    
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        guard !numbers.isEmpty else { return [] }
        var i = 0
        var j = numbers.count - 1

        while i < j {
            guard numbers[i] + numbers[j] != target else { break }

            if numbers[i] + numbers[j] > target {
                j -= 1
            } else {
                i += 1
            }
        }

        return [i + 1, j + 1]
    }

}

```

