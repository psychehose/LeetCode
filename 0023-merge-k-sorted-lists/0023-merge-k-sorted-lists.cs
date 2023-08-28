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
    public ListNode MergeKLists(ListNode[] lists) {
        
        ListNode merged = null;

        // Array 순회
        for (int i = 0; i < lists.Length; i++) {
            
            ListNode poped = lists[i];

            // Poped와 merged를 합쳐서 cur로 만들고 merged를 업데이트 해주기.
            ListNode root = new ListNode(-1000000);
            ListNode cur = root;
            
            // Poped와 Merged를 Sorted order를 하자.
            
            while(poped != null || merged != null) {
                
                // 하나의 ListNode가 Null인 경우 나머지 노드를 넣는다.
                if (poped == null) {
                    cur.next = merged;
                    cur = cur.next;
                    break;
                }
                else if (merged == null) {
                    cur.next = poped;
                    cur = cur.next;
                    break;
                }
                
                // ListNode가 Empty가 아닌 경우
                else {
                    if(poped.val >= merged.val) {
                        // merged.val을 넥스트로
                        ListNode next = new ListNode(merged.val);
                        cur.next = next;
                        merged = merged.next;
                        cur = cur.next;
                    } else {
                        // poped.val을 넥스트로
                        ListNode next = new ListNode(poped.val);
                        cur.next = next;
                        poped = poped.next;
                        cur = cur.next;
                    }   
                }
            }
            // cur가 다 합쳐진 merged -> merged에 넣자.
            merged = root.next;
        }
        return merged;
        
    }
}