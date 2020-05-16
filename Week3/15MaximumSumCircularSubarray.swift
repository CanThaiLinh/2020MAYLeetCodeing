//
//  ViewController.swift
//  StockPrices
//
//  Created by thailinh on 5/16/20.
//  Copyright © 2020 thailinh. All rights reserved.
//

import UIKit

class Solution {
    func findMaxSumSubArray(list : [Int]) -> Int{
        var maxSumTemp = 0
        var maxSum = Int.min
        for item in list{
            maxSumTemp += item
            if maxSum < maxSumTemp{
                maxSum = maxSumTemp
            }
            maxSumTemp = max(maxSumTemp,0)
        }
        return maxSum
    }
    func maxSubarraySumCircular(_ A: [Int]) -> Int {
        let maxOfInitialList = findMaxSumSubArray(list: A)
        var total = 0
        for item in A{
            total += item
        }
        var listA2 = [Int]()
        listA2.append(contentsOf: A)
        
        for index in 0..<listA2.count{
            listA2[index] = A[index] * -1
        }
        let maxTemp = findMaxSumSubArray(list: listA2)
        let flipSum = total + maxTemp
        if flipSum > maxOfInitialList && flipSum != 0 {
            return flipSum
        }
        return maxOfInitialList
        
    }
}
