class Solution {
    func removeStars(_ s: String) -> String {
        var stack: [Character] = []
        
        var arr: Array<Character> = Array(s)
        
        
        for c in s {
            if  c != "*" {
                stack.append(c)
            } else {
                stack.removeLast()
            }
        }

        return String(stack)
    }
}