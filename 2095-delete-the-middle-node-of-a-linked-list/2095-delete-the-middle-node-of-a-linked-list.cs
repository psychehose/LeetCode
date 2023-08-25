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
    public ListNode DeleteMiddle(ListNode head) {
        
        ListNode cur = head;
        
        if (cur.next == null) {
            return null;
        }
        
        decimal count = 1;
        
        while(cur.next != null) {
            count++;
            cur = cur.next;
        }
        
        cur = head;
        for (decimal i = 0; i < Math.Truncate(count / 2) -1 ; i ++)  {
            cur = cur.next;
        }
        
        if (cur.next != null) {
            cur.next = cur.next.next;
        } 
        
        
        
        return head;
    }
}