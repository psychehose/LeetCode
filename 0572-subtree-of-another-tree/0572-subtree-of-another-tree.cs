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
    public bool IsSubtree(TreeNode root, TreeNode subRoot) {
        
        if (root != null && subRoot == null) {
            return true;
        } else if (root == null && subRoot != null) { 
            return false;
        }
        
        if (IsSameTree(root, subRoot)) {
            return true;
        }
        
        return IsSubtree(root.left, subRoot) || IsSubtree(root.right, subRoot);

    }
    
    public bool IsSameTree(TreeNode node1, TreeNode node2) {
        if (node1 == null || node2 == null) {
            return node1 == node2;
        }
        
        
        return
            node1.val == node2.val &&
            IsSameTree(node1.left, node2.left) &&
            IsSameTree(node1.right, node2.right);
    }
}