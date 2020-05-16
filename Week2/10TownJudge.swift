//
//  ViewController.swift
//  StockPrices
//
//  Created by thailinh on 5/13/20.
//  Copyright © 2020 thailinh. All rights reserved.
//

import UIKit
class Solution {
    func findJudge(_ N: Int, _ trust: [[Int]]) -> Int {
        if N == 1{
            return 1
        }
        
        var dicTrust = [Int : [Int]]()
        var dicToBeTrust =  [Int : [Int]]()
        var listJudges = [Int]()
        
        for list in trust{
            if dicTrust[list[0]] == nil{
                dicTrust[list[0]] = [Int]()
            }
            dicTrust[list[0]]!.append(list[1])
            
            if dicToBeTrust[list[1]] == nil{
                dicToBeTrust[list[1]] = [Int]()
            }
            dicToBeTrust[list[1]]!.append(list[0])
        }
        for index in 1...N{
            if dicTrust[index] == nil || dicTrust[index]!.count == 0{
                listJudges.append(index)
            }
            
        }
        var result = -1
        for jugdge in listJudges{
            if dicToBeTrust[jugdge]?.count == N - 1{
                if result == -1 {
                    result = jugdge
                }else{
                    return -1
                }
            }
        }
        
        return result
    }
}
