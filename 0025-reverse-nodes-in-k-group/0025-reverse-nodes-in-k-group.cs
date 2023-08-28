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
    public ListNode ReverseKGroup(ListNode head, int k) {
        
        if ( k==1 ) return head;
        
        ListNode prehead = new ListNode();
        ListNode prev = prehead;
        
        ListNode current = head;
        

        while(current != null) {    
            List<ListNode> stack = new List<ListNode>();
        
            for (int i = 0; i < k; i++) {
                if (current == null) {
                    return prehead.next;
                }
                stack.Add(current);
                current = current.next;
            }
            
            for (int i = 0; i < k; i++) {
                ListNode node = stack[k-i-1];

                prev.next = node;
                prev = prev.next;
                
                if(i==k-1) {
                    // 마지막처리
                    prev.next = current;
                }
            }
            
        }
        
        
        return prehead.next;
    }
}