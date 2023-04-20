/**
 * Definition for a Node.
 * public class Node {
 *     public var val: Int
 *     public var left: Node?
 *     public var right: Node?
 *	   public var next: Node?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *         self.next = nil
 *     }
 * }
 */
class Solution {
    func isLastInLevel(_ target: Int) -> Bool {
        var copy = target + 1
        while(copy > 1) {
            if copy % 2 != 0 {
                return false
            }
            copy = copy / 2
        }
        return true
    }
    
    func connect(_ root: Node?) -> Node? {
        
        var queue: [Node] = []
        var prev: Node?
        var count = 1

        guard var head = root else {
            return nil
        }

        queue.append(head)
        
        while(!queue.isEmpty) {
            var node = queue.removeFirst()
            prev?.next = node

            if isLastInLevel(count) {
                prev = nil
            }
            else {
                prev = node
            }
            count += 1
            if var left = node.left {
                queue.append(left)
            }

            if var right = node.right {
                queue.append(right)
            }
        }

        return root
    }
}


// MARK: -

