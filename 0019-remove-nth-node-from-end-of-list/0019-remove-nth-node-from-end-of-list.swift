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
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        
        var cursor: ListNode? = head

        var count = 1
        
        while cursor?.next != nil {
            count += 1
            cursor = cursor?.next
        }
        
        
        cursor = head
        
        // 끝에서 n번째 index를 구하기 last index = count - 1
        // 우리가 지우려는 것 = last index - n + 1 =  count - 1 -n + 1  = count - n
        // count - n - 1 로 가서 이거랑 count - n + 1 랑 연결해주면 되겠네.

        // 제거해야할 node = count - n
    
        if count - n == 0 {
            return cursor?.next
        }
        
        for _ in 0 ..< count - n - 1{
            cursor = cursor?.next
        }
        
        cursor?.next = cursor?.next?.next
        return head
        
        
        
        
    
    }
}


// SOL.

/*


*/