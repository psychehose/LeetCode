/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public int val;
 *     public ListNode next;
 *     public ListNode(int x) {
 *         val = x;
 *         next = null;
 *     }
 * }
 */
public class Solution {
    public bool HasCycle(ListNode head) {
        // cur_index
        
        int len = 0;

        while(head != null) {
            len ++;

            if(len > 10000) {
                return true;
            }
            head = head.next;
        }
        
        return false;
        
    }
}