class Solution {
    func climbStairs(_ n: Int) -> Int {
        
        var ways: [Int: Int] = [1:1, 2:2]
        
        if n == 1 {
            return 1
        }
        
        else if n == 2 {
            return 2
        }

        else {
            for i in 3 ... n {
                ways[i] = (ways[i-1] ?? 0) + (ways[i-2] ?? 0)
            }
        }

        return ways[n]!
        
    }
}


// MARK: - SOL

/*

f(n) = f(n-1) + f(n-2)
f(1) = 1
f(2) = 2

*/