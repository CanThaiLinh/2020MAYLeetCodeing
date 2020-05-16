//
//  ViewController.swift
//  StockPrices
//
//  Created by thailinh on 5/13/20.
//  Copyright © 2020 thailinh. All rights reserved.
//

import UIKit

class Solution {
    func isPerfectSquare(_ num: Int) -> Bool {
        if num < 2 {
            return true
        }
        var left = 2
        var right = num
        while (left <= right){
            var mid = left + (right - left) / 2
            if mid * mid == num{
                return true
            }
            if mid * mid > num{
                right = mid - 1
            }else{
                left = mid + 1
            }
        }
        return false
    }
}
