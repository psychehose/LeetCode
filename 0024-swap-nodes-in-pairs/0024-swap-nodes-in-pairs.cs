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
    public ListNode SwapPairs(ListNode head) {
    
        if (head == null || head.next == null) return head;
        
        ListNode prehead = new ListNode();
        ListNode previos = prehead;

        ListNode current = head;
        
        while(current != null && current.next != null) {
            previos.next = current.next;
            current.next = previos.next.next;
            previos.next.next = current;
            
            previos = current;
            current = current.next;
            
        }

        
        
        
        return prehead.next;
    }

}