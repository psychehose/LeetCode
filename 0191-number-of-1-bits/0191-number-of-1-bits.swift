class Solution {
    func hammingWeight(_ n: Int) -> Int {
        
        var unsignedNumber = UInt32(n)
        
        return unsignedNumber.nonzeroBitCount
    }
}