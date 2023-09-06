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

        
        int dfs(TreeNode root, int v) {
            if(root == null) { return v;}

            int l = v;
            int r = v;

            int max = v;
            
            if (root.left != null) {
                l = l + 1;
            }
            if (root.right != null) {
                r = r + 1;
            }
            
            max = Math.Max(dfs(root.left, l), dfs(root.right, r));

            return max;
        }
        
        return dfs(root,1);
        
        
        
    }
}