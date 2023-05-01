class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
        if n <= 0 {
            return false
        }
        
        var int32number = Int32(n)
        var valueCount = int32number.nonzeroBitCount

        return valueCount == 1
    }
}