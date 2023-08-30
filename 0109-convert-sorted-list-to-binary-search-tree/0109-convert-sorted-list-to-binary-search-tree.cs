/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public int val;
 *     public ListNode next;
 *     public ListNode(int val=0, ListNode next=null) {
 *         this.val = val;
 *         this.next = next;
 *     }
 * }
 */
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
    public TreeNode SortedListToBST(ListNode head) {
        
        if (head == null) return null;

        ListNode prehead = new ListNode();
        prehead.next = head;

        ListNode prev = head;
        
        int count = NodeLen(head);
        int mid = (count / 2) + 1;
        
        if (count == 1) {
            return new TreeNode(head.val);
        }

        for (int i = 1; i < mid - 1; i++) {
            prev = prev.next;
        }
        
        ListNode middle = prev.next;
        ListNode right = middle.next;

        prev.next = null;    
        middle.next = null;
        
        TreeNode tree = SortedListToBST(middle);
        tree.left = SortedListToBST(prehead.next);
        tree.right = SortedListToBST(right);
        
        return tree;
    }
    
    public int NodeLen(ListNode head) {
        ListNode cur = head;

        int count = 0;
        while(cur != null) {
            count++;
            cur = cur.next;
        }
        return count;
    }
}