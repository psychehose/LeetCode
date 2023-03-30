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
    func middleNode(_ head: ListNode?) -> ListNode? {
        
        var copy = head
        var count: Int = 1
        
        while let next = copy?.next {            
            count += 1
            copy = copy?.next
        }
        
        var middle = Int(round(Double(count + 1) / 2.0))
        copy = head

        for i in 0 ..< (middle - 1) {
            copy = copy?.next
        }
        
        return copy
        
    }
}


// Sol 접근

/*
*
* 모든 노드를 순회하면서 배열에 값을 append 한다.
* 배열에서 중간 값과 index를 찾고 singly linked list를 리턴한다.

*/