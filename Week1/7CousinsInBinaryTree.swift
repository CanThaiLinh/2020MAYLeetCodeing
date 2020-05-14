//
//  ViewController.swift
//  StockPrices
//
//  Created by thailinh on 5/12/20.
//  Copyright © 2020 thailinh. All rights reserved.
//

import UIKit

//Swift
class Solution {
    func isCousins(_ root: TreeNode?, _ x: Int, _ y: Int) -> Bool {
        guard let root = root else { return false }
        var list = [Set<Int>]()
        return dfsSearchNode(root, 0, x, y, &list)
    }
    
    func dfsSearchNode(_ root: TreeNode?, _ depth: Int, _ x: Int, _ y: Int, _ list: inout [Set<Int>]) -> Bool {
        guard let root = root else { return false }
        if depth >= list.count {
            let set = Set([root.val])
            list.append(set)
        } else {
            list[depth].insert(root.val)
        }
        
        if (root.left?.val == x && root.right?.val == y) ||
            (root.left?.val == y && root.right?.val == x) {
            return false
        }
        if list[depth].contains(x), list[depth].contains(y) {
            return true
        }
        return dfsSearchNode(root.left, depth + 1, x, y, &list)
            || dfsSearchNode(root.right, depth + 1, x, y, &list)
        
    }
}

