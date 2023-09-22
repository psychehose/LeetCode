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
    public int KthSmallest(TreeNode root, int k) {
        
        // Inorder
        int n = 0;
        int res = -1;

        void Inorder(TreeNode node) {
            
            if (node == null) {
                return;
            }
            
            Inorder(node.left);

            n++;

            if (n == k) {
                res = node.val;
                return;
            }

            Inorder(node.right);
                
        }
        
        
        Inorder(root);
        
        
        return res;
    }
    
    
}