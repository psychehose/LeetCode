/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */

extension Solution {
    func addTree(_ a: TreeNode?, _ b: TreeNode?) -> TreeNode? {
        if a == nil && b == nil {
            return nil
        }
        
        if a == nil {
            return TreeNode(b!.val)
        }
        
        else if b == nil {
            return TreeNode(a!.val)
        }
        
        else {
            return TreeNode(a!.val + b!.val)
        }
    }
}
class Solution {
    func mergeTrees(_ root1: TreeNode?, _ root2: TreeNode?) -> TreeNode? {
        
        if root1 == nil && root2 == nil {
            return nil
        }

        var head = addTree(root1, root2)
        
        func traverse(_ root: TreeNode?, _ root1: TreeNode?, _ root2: TreeNode?) {
            
            guard let node = root else {
                return
            }
            
            var left = addTree(root1?.left, root2?.left) // 4
            var right = addTree(root1?.right, root2?.right) // 5

            
            node.left = left
            node.right = right

            traverse(node.left, root1?.left, root2?.left)
            traverse(node.right, root1?.right, root2?.right)
        }
        
        
        traverse(head, root1, root2)

        
        return head
    }
}

// 원소가 1개 -> level 1
// 원소가 2개 or 3개 -> level 2
// 원소가 4개 or 

// newNode -> TreeNode
// head -> 