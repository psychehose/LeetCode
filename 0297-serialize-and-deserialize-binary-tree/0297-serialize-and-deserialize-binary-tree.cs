/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public int val;
 *     public TreeNode left;
 *     public TreeNode right;
 *     public TreeNode(int x) { val = x; }
 * }
 */
public class Codec {

    // Encodes a tree to a single string.
    public string serialize(TreeNode root) {
        List<string> s = new List<string>();
        
        void dfs(TreeNode node) {
            if (node == null) {
                
                s.Add("N");
                return;
            }

            s.Add(node.val.ToString());
            dfs(node.left);
            dfs(node.right);
        }

        dfs(root);
        return string.Join(",", s);
    }

    // Decodes your encoded data to tree.
    public TreeNode deserialize(string data) {
        string[] s = data.Split(",");
        int i = 0;
        
        TreeNode dfs() {
            if (s[i] == "N") {
                i++;
                return null;
            }
            
            TreeNode node = new TreeNode(int.Parse(s[i]));
            i++;
            
            node.left = dfs();
            node.right = dfs();

            return node;            
        }
        
        return dfs();
        
    }
}

// Your Codec object will be instantiated and called as such:
// Codec ser = new Codec();
// Codec deser = new Codec();
// TreeNode ans = deser.deserialize(ser.serialize(root));