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
        
        ListNode prehead = new ListNode();
        prehead.next = head;
    
        ListNode prev = prehead;
        
        for (int i = 0; i < left - 1; i++) {
            prev = prev.next;
        }
        
        ListNode current = prev.next;
        
        for (int i = 0 ; i < right - left; i++) {
            ListNode forw = current.next;
            current.next = forw.next;
            forw.next = prev.next;
            prev.next = forw;
        }
        
        return prehead.next;

    }
}