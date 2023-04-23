class Solution {
    func combine(_ n: Int, _ k: Int) -> [[Int]] {

        
        var arr: [Int] = []
        var element = Array(repeating: 0, count: k)
        var result: [[Int]] = []

        for i in 1 ... n {
            arr.append(i)
        }
        
        func DFS(_ degree: Int, _ start: Int) {
            if degree == k {
                result.append(element)
                return
            }

            for i in start ..< n {
                element[degree] = arr[i]
                DFS(degree + 1, i + 1)
            }
        }
        
        
        DFS(0, 0)
        
        return result
    }
}

// MARK: - 
/*



*/