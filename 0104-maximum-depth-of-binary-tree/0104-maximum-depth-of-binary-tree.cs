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
        
        
        Queue<TreeNode> q = new Queue<TreeNode>();

        q.Enqueue(root);
        int level = 0;
        
        while (!(q.Count == 0)) {
            
            int len = q.Count();
            
            for (int i = 0; i < len; i++) {
                TreeNode node = q.Dequeue();
                
                if (node.left != null) {
                    q.Enqueue(node.left);
                }
                
                if (node.right != null) {
                    q.Enqueue(node.right);
                }
            }
            
            level += 1;
        }
        
        return level;
        
        
        
        
    }
}