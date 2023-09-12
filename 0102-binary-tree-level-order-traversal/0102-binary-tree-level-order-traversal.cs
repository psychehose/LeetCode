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
    public IList<IList<int>> LevelOrder(TreeNode root) {
        
        
        if(root == null) { return new List<IList<int>>(); }

        List<List<int>> res = new List<List<int>>();
        

        Queue<TreeNode> queue = new Queue<TreeNode>();
        
        queue.Enqueue(root);
        
        while(queue.Count() != 0) {

            int len = queue.Count();
            
            List<int> leaves = new List<int>();

            for (int i = 0; i < len; i++) {
                
                TreeNode node = queue.Dequeue();

                leaves.Add(node.val);
                
                if (node.left != null) {
                    queue.Enqueue(node.left);
                }
                
                if (node.right != null) {
                    queue.Enqueue(node.right);
                }


            }
            
            res.Add(leaves);
        }
        
        return res.ToArray();
    }
}