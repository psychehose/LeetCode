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
    func rotateRight(_ head: ListNode?, _ k: Int) -> ListNode? {
        
        var listNodeCount: Int = 1
        var currentNode: ListNode? = head
        var targetNode: ListNode? = nil
        var move: Int = 0
        var newHead: ListNode? = nil
        var first: ListNode? = nil
        
        if head == nil {
            return nil
        }
        
        
        // 노드 갯수 찾기
        
        while currentNode?.next != nil {
            listNodeCount += 1
            currentNode = currentNode?.next
        }

        
        currentNode = head
        move = k % listNodeCount
        
        if listNodeCount == 1 || k == 0 || move == 0 {
            return head
        }
        
        newHead = ListNode(head!.val)
        first = newHead
        
        
        
        for i in 0 ..< listNodeCount - move {
            if i != 0 {
                newHead?.next = ListNode(currentNode!.val)
                newHead = newHead?.next
            }

            currentNode = currentNode?.next
        }
        
        var result = currentNode
        
        while true {
            if currentNode?.next == nil {
                currentNode?.next = first
                return result
            }
            currentNode = currentNode?.next
        }
        
        return result
        
        
    }
    
    func printAll(_ node: ListNode?) {

        var copyNode: ListNode? = node

        while copyNode != nil {
            print(copyNode?.val)
            copyNode = copyNode?.next
        }
    }
}


// MARK: 해결방법

/*

일단 최소로 반복을 돌리기 위해서 k를 알맞게 수정하는 것이 좋아보임 -> 해결
그러기 위해서 ListNode의 총 갯수를 파악하는 것이 필요함. -> 해결

k 값의 수정은 n % k로 할 수 잇음.



*/ 

