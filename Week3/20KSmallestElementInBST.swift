//
//  ViewController.swift
//  kthSmallest
//
//  Created by thailinh on 5/21/20.
//  Copyright © 2020 thailinh. All rights reserved.
//

import UIKit

class Solution {
    func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
        var value : Int? = nil
        var count : Int = 0
        search(root,k, &value, &count)
        return value!
    }
    
    func search(_ root : TreeNode?,_ k : Int,_ value : inout Int?, _ count : inout Int){
        guard let root = root else{
            return
        }
        if let left = root.left{
            search(left,k, &value, &count)
        }
        count += 1
        if count == k{
            value = root.val
            return
        }
        
        if let right = root.right {
            search(right,k, &value, &count)
        }
        
    }
}
