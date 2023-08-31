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
    public void ReorderList(ListNode head) {
        
        if (head == null || head.next == null) {
            return;
        }
        
        ListNode cur = head;
        
        int len = 0;

        // Get Node len 
        
        while(cur != null) {
            len++;
            cur = cur.next;
        }
        cur = head;

        int ord = -1;
        
        while(cur != null) {
            
            ord +=2;

            ListNode before = cur;
            
            if (len - ord < 2) {
                break;
            }

            for (int i = 1; i < len - ord; i++) {
                before = before.next;
            }
            
            ListNode reorder = before.next;
            before.next = null;

            reorder.next = cur.next;
            cur.next = reorder;   
            cur = cur.next.next;
        }
        
        
        return;
        
        
    }
}