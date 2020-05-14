//
//  ViewController.swift
//  StockPrices
//
//  Created by thailinh on 5/13/20.
//  Copyright © 2020 thailinh. All rights reserved.
//

import UIKit

class Solution {
    func removeAllFirstZero( num : inout String){
        while (num.count > 0 && num.first! == "0")  {
            num.removeFirst()
        }
    }
    
    func getCharacterAtIndex(index : Int, string : String) -> Character{
        let indexStr = string.index(string.startIndex, offsetBy: index)
        return string[indexStr]
    }
    func removeKdigits(_ num: String, _ k: Int) -> String {
        var index = 0
        var newNum = num
        var newK = k
        while ( index < newNum.count - 1 && newK > 0) {
            if (getCharacterAtIndex(index: index, string: newNum) <= getCharacterAtIndex(index: index + 1, string: newNum)){
                index += 1
            }else{
                newNum.remove(at: newNum.index(newNum.startIndex, offsetBy: index))
                newK -= 1
                if index > 0{
                    index -= 1
                }
            }
        }
        if newK != 0{
            newNum.removeLast(newK)
        }
        if (newNum.count > 0 && newNum.first! == "0"){
            removeAllFirstZero(num: &newNum)
        }
        if newNum.count == 0{
            return "0"
        }
        return newNum
    }
}
