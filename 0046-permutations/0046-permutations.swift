class Solution {
    func permute(_ nums: [Int]) -> [[Int]] {
        
        var len = nums.count
        var element = Array(repeating: 0, count: len)
        var check = Array(repeating: false, count: len)
        var res = [[Int]]()
        
        func DFS(_ degree: Int) {
            if degree == len {
                res.append(element)
                return
            }
            else {
                for i in 0 ..< len {
                    if !check[i] {
                        check[i] = true
                        element[degree] = nums[i]
                        DFS(degree + 1)
                        check[i] = false
                    }
                }

            }
        }
        
        DFS(0)

        return res
        
    }
}