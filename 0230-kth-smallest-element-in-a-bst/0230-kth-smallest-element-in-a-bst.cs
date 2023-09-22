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
        
        List<int> list = new List<int>();

        void Inorder(TreeNode node) {
            
            if (node == null) {
                return;
            }
            
            Inorder(node.left);
            
            list.Add(node.val);

            Inorder(node.right);
                
        }
        
        Inorder(root);
        
        return list[k-1];
    }
    
    
}