//
//  main.swift
//  KthBST
//
//  Created by KIM HOSE on 2022/04/19.
//

import Foundation

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() {
        self.val = 0
        self.left = nil
        self.right = nil
    }

    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }

    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

class Solution {
    func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
        var result: [Int] = []
        
        func inorderTraverse(_ root: TreeNode?) {
            guard let node = root else {
                return
            }
            inorderTraverse(node.left)
            result.append(node.val)
            inorderTraverse(node.right)
        }
        inorderTraverse(root)
        return result[k-1]
    }
}
