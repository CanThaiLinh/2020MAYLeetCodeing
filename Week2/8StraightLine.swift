//
//  ViewController.swift
//  StockPrices
//
//  Created by thailinh on 5/13/20.
//  Copyright © 2020 thailinh. All rights reserved.
//

import UIKit

class Solution {
    func checkStraightLine(_ coordinates: [[Int]]) -> Bool {
        var isStraightLine = true
        if coordinates.count > 2 {
            let denominator1 = coordinates[1][0] - coordinates[0][0]
            let denominator2 = coordinates[1][1] - coordinates[0][1]
            for index in 2..<coordinates.count{
                let numerator1 = coordinates[index][0] - coordinates[0][0]
                let numerator2 = coordinates[index][1] - coordinates[0][1]
                if numerator1 * denominator2 - numerator2 * denominator1 != 0{
                    return false
                }
            }
        }
        return true
    }
}
