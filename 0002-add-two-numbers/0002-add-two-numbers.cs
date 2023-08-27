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
        
        bool isUp = false;
        
        while((l1 != null && l2 != null))  {
            
            if (isUp) {
                // 전에서 10이 넘은 경우 1을 더해줌
                
                int val = l1.val + l2.val + 1;
                
                if(val >= 10) {
                    // 10 넘은경우
                    isUp = true;
                    val = val - 10;
                    
                } else {
                    // 10 넘지 않은 경우
                    isUp = false;
                }
                
                ListNode next = new ListNode(val);
                added.next = next;
                added = added.next;

            }
            
            else {
                // 전에서 10이 넘지 않은 경우
                int val = l1.val + l2.val;

                if(val >= 10) {
                    // 10 넘은경우
                    isUp = true;
                    val = val - 10;
                    
                } else {
                    // 10 넘지 않은 경우
                    isUp = false;
                }
                
                ListNode next = new ListNode(val);
                added.next = next;
                added = added.next;
            }
            
            l1 = l1.next;
            l2 = l2.next;

        }
        
        // IsUp 처리와 나머지 L1, L2 나머지 처리
        
        if (isUp) {
            // 1올려주기
            if(l1 != null || l2 != null) {
                if(l1 != null) {
                    // l1이 null이 아님
                    while(l1 != null) {
                        if (isUp) {
                            int val = l1.val + 1;
                            
                            if(val >= 10) {
                                // 10 넘은 경우
                                val = val - 10;
                                ListNode next = new ListNode(val);
                                added.next = next;
                                added = added.next;
                                isUp = true;
                                
                            } else {
                                // 10 넘지 않은 경우
                                ListNode next = new ListNode(val);
                                added.next = next;
                                added = added.next;
                                isUp = false;
                            }
                            
                        } else {
                            int val = l1.val;
                            ListNode next = new ListNode(val);
                            added.next = next;
                            added = added.next;
                            isUp = false;
                        }
                        l1 = l1.next;
                    }
                }
                
                else {
                    while(l2 != null) {
                        if (isUp) {
                            int val = l2.val + 1;
                            
                            if(val >= 10) {
                                // 10 넘은 경우
                                val = val - 10;
                                ListNode next = new ListNode(val);
                                added.next = next;
                                added = added.next;
                                isUp = true;
                                
                            } else {
                                // 10 넘지 않은 경우
                                ListNode next = new ListNode(val);
                                added.next = next;
                                added = added.next;
                                isUp = false;
                            }
                            
                        } else {
                            int val = l2.val;
                            ListNode next = new ListNode(val);
                            added.next = next;
                            added = added.next;
                            isUp = false;
                        }
                        l2 = l2.next;
                    }
                }
                
                
            } else {
                //
                ListNode next = new ListNode(1);
                added.next = next;
                added = added.next;
                isUp = false;
                
            }
        }
        
        else {
            if(l1 != null || l2 != null) {
                if(l1 != null) {
                    // l1이 null이 아님
                    while(l1 != null) {
                        if (isUp) {
                            int val = l1.val + 1;
                            
                            if(val >= 10) {
                                // 10 넘은 경우
                                val = val - 10;
                                ListNode next = new ListNode(val);
                                added.next = next;
                                added = added.next;
                                isUp = true;
                                
                            } else {
                                // 10 넘지 않은 경우
                                ListNode next = new ListNode(val);
                                added.next = next;
                                added = added.next;
                                isUp = false;
                            }
                            
                        } else {
                            int val = l1.val;
                            ListNode next = new ListNode(val);
                            added.next = next;
                            added = added.next;
                            isUp = false;
                        }
                        l1 = l1.next;
                    }
                }
                
                else {
                    while(l2 != null) {
                        if (isUp) {
                            int val = l2.val + 1;
                            
                            if(val >= 10) {
                                // 10 넘은 경우
                                val = val - 10;
                                ListNode next = new ListNode(val);
                                added.next = next;
                                added = added.next;
                                isUp = true;
                                
                            } else {
                                // 10 넘지 않은 경우
                                ListNode next = new ListNode(val);
                                added.next = next;
                                added = added.next;
                                isUp = false;
                            }
                            
                        } else {
                            int val = l2.val;
                            ListNode next = new ListNode(val);
                            added.next = next;
                            added = added.next;
                            isUp = false;
                        }
                        l2 = l2.next;
                    }
                }
            } else {
                // Nothing
            }
        }
        
        
        if (isUp) {
            ListNode next = new ListNode(1);
            added.next = next;
            added = added.next;
        }
        
        
        
        return prehead.next;
        
    }
}