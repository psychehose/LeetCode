class Solution {
    func reverseString(_ s: inout [Character]) {
        if s.count == 1 {
            return 
        }

        var loop: Int = (s.count / 2)
        for i in 0 ..< loop {
            s.swapAt(i, s.count - 1 - i)
        }
        
        
    }
}