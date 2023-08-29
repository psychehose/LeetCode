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
    public ListNode DeleteDuplicates(ListNode head) {
        
        ListNode prehead = new ListNode();
        prehead.next = head;
        ListNode cur = head;
        ListNode prev = prehead;
    
        int number = -10000;
        
        
        while(cur != null) {

            if (cur.val == number) {
                // delete
                prev.next = cur.next;
                cur = cur.next;
            }
            
            else {
                
                number = cur.val;
                prev.next = cur;
                prev = prev.next;
                
                cur = cur.next;
            }
        }
        
        
        return prehead.next;
        
    }
}