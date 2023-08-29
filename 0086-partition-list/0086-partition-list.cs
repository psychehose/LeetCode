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
    public ListNode Partition(ListNode head, int x) {

        ListNode cur = head;
        
        ListNode prehead_before = new ListNode();
        ListNode before = prehead_before;
        
        ListNode prehead_after = new ListNode();
        ListNode after = prehead_after;

        while(cur != null) {
            if (cur.val >= x) {
                // greater than or equal x
                after.next = new ListNode(cur.val);
                after = after.next;

            } else {
                before.next = new ListNode(cur.val);
                before = before.next;
            }

            cur = cur.next;
        }
        // connect
        before.next = prehead_after.next;
        
        
        
        return prehead_before.next;
        
    }
}