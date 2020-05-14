//
//  ViewController.swift
//  StockPrices
//
//  Created by thailinh on 5/13/20.
//  Copyright © 2020 thailinh. All rights reserved.
//

import UIKit

class Solution {
    func singleNonDuplicate(_ nums: [Int]) -> Int {
        var left = 0
        var right = nums.count - 1
        var mid = 0
        if right == 0 {
            return nums[0]
        }
        if nums.count >= 2 && nums[0] != nums[1] {
            return nums[0]
        }
        if nums.count >= 2 && nums[right] != nums[right - 1]{
            return nums[right];
        }
        
        while left < right {
            mid = left + (right - left) / 2
            if nums[mid] == nums[mid ^ 1]{
                left = mid + 1
            }else{
                right = mid
            }
        }
        return nums[left]
    }
}
