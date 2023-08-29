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
public class Solution {
    public ListNode ReverseBetween(ListNode head, int left, int right) {
        
        if (left == right || head.next == null) {
            return head;
        }
        
        ListNode prehead = new ListNode(-100000);
        prehead.next = head;
        ListNode current = head;
        
        ListNode leftNode = prehead;
        ListNode rightNode = null;

        int count = 0;
        
        List<ListNode> stack = new List<ListNode>();
        
        while(current != null) {

            count++;

            if (count == left - 1) {
                leftNode = current;
            }
            
            else if (count >= left && count <= right) {
                stack.Add(current);
            }
            
            else if (count == right + 1) {
                rightNode = current;
            }

            current = current.next;
        }
        
        
        ListNode preheadReversed = new ListNode();
        ListNode reversed = preheadReversed;
        
        for (int i = 0; i < stack.Count; i++) {
            ListNode node = new ListNode(stack[stack.Count - 1 - i].val);
            reversed.next = node;
            reversed = reversed.next;
        }


        reversed.next = rightNode;
        leftNode.next = preheadReversed.next;
        return prehead.next;

    }
}