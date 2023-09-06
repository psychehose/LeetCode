/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public int val;
 *     public TreeNode left;
 *     public TreeNode right;
 *     public TreeNode(int val=0, TreeNode left=null, TreeNode right=null) {
 *         this.val = val;
 *         this.left = left;
 *         this.right = right;
 *     }
 * }
 */
public class Solution {
    public int MaxDepth(TreeNode root) {
        
        if (root == null) { return 0; }
        
        Stack<(TreeNode, int)> stack = new Stack<(TreeNode, int)>();
        
        stack.Push((root, 1));
        int res = 1;
        
        
        while (!(stack.Count() == 0)) {
            (TreeNode node, int depth) = stack.Pop();
            
            if (node != null) {
                res = Math.Max(res, depth);
                stack.Push((node.left, depth + 1));
                stack.Push((node.right, depth + 1));
            }
        }
        
        return res;
    }
}