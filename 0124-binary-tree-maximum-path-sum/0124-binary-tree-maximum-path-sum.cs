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
    public int MaxPathSum(TreeNode root) {
        
        int res = root.val;
        
        int dfs(TreeNode node) {

            if (node == null) {
                return 0;
            }
            
            int leftMax = dfs(node.left);
            int rightMax = dfs(node.right);
            
            leftMax = Math.Max(leftMax, 0);
            rightMax = Math.Max(rightMax, 0);
            
            res = Math.Max(res, node.val + leftMax + rightMax);
            
            return node.val + Math.Max(leftMax, rightMax);
            
        }
        
        dfs(root);
        
        
        return res;
        
    }
}