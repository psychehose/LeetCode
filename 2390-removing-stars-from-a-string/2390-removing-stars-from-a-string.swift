class Solution {
    func removeStars(_ s: String) -> String {

        var stack: [Character] = []

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