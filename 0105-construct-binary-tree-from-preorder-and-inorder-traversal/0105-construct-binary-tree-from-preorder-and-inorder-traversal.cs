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
    public TreeNode BuildTree(int[] preorder, int[] inorder) {
        if (preorder.Length == 0 || inorder.Length == 0) {
            return null;
        }
        
        TreeNode root = new TreeNode(preorder[0]);
        int mid = Array.IndexOf(inorder, preorder[0]);
        
        root.left = BuildTree(preorder.Skip(1).Take(mid).ToArray(), inorder.Skip(0).Take(mid).ToArray());
        root.right = BuildTree(preorder.Skip(mid+1).ToArray(), inorder.Skip(mid+1).ToArray());
        
        
        return root;
    }
}