/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        
        var merged = ListNode()
        
        func traverse(_ root1: ListNode?, _ root2: ListNode?, _ target: ListNode?) {
            
            guard var root1 = root1 else {    
                target?.next = root2
                return
            }

            guard var root2 = root2 else {
                target?.next = root1
                return
            }

            if root1.val <= root2.val {
                target?.next = root1
                traverse(root1.next, root2, target?.next)
            }

            else {
                target?.next = root2
                traverse(root1, root2.next, target?.next)
            }
        }
        
        traverse(list1, list2, merged)
        
        
        return merged.next
        
     
        
    }
}

// MARK: - 


/*

list1, list2를 뽑고,

기준을 list1으로 잡기 -> list2.next를 보면서 계속 수행하기.

*/