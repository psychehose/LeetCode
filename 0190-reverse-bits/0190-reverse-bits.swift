class Solution {
    func reverseBits(_ n: Int) -> Int {
        var int32number = UInt32(n)
        var bitInt32Number = String(int32number, radix: 2)
        
        
        var zerolen = 32 - bitInt32Number.count
        var zeroArray: [String] = Array(repeating: "0", count: zerolen)
        var zeros = zeroArray.joined()
        
        var bits = zeros + bitInt32Number
        
        var newBits = String(bits.reversed())
        
        var result = Int(newBits, radix: 2)
        
        return result ?? 0
        
    }
}