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
    public ListNode AddTwoNumbers(ListNode l1, ListNode l2) {
        
        ListNode prehead = new ListNode();
        ListNode added = prehead;
        int carry = 0;
        
        while (l1 != null || l2 != null || carry != 0) {
            int digit1 =  (l1 != null) ? l1.val : 0;
            int digit2 =  (l2 != null) ? l2.val : 0;
            
            int sum = digit1 + digit2 + carry;
            int digit = sum % 10;
            carry = sum / 10;
            
            ListNode next = new ListNode(digit);
            added.next = next;
            added = added.next;
            
            l1 = (l1 != null) ? l1.next : null;
            l2 = (l2 != null) ? l2.next : null;
        } 
        
        return prehead.next;
        
    }
}