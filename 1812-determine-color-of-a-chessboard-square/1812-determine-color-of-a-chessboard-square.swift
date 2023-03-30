class Solution {
    func squareIsWhite(_ coordinates: String) -> Bool {

        var copy = coordinates
        var res: UInt8 = 0

        for _ in 0 ..< coordinates.count {
            res += copy.popLast()?.asciiValue ?? 0
        }

        return res % 2 == 0 ? false : true
    }

    /**
     a = 97
     b = 98
     ...
     h = 104



     1 = 48
     ...
     8 = 55



 
     black = even, white = odd
     **/
}