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
    
        ListNode prehead = new ListNode(-101);
        prehead.next = head;

        ListNode prev = prehead;
        ListNode current = head;
        
        bool deleteFlag = false;
        
        int target = -1000000;
        
        while(current != null) {
            if (target == current.val) {
                // same number
                deleteFlag = true;
                current = current.next;
            }
            
            else {
                
                // new target
                target = current.val;
                
                if (deleteFlag) {
                    prev.next = current;
                    deleteFlag = false;
                }
                
                if ((prev.val != current.val)) {
                    // prev update
                    if(current.next == null) {
                        prev.next = current;
                        prev = prev.next;
                    } 
                    else if(current.next.val != current.val) {
                        prev.next = current;
                        prev = prev.next;
                    }
                }
                current = current.next;
            }
        }
        
        if (deleteFlag) {
            
            prev.next = null;
            prev = prev.next;
            
            deleteFlag = false;
        }
        
        return prehead.next;
    }
}