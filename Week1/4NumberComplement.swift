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
    func findComplement(_ num: Int) -> Int {
        var result = 0
        var i = 0
        var newNum = num
        while ( newNum > 0){
            if newNum & 1 == 0{
                result += 1 << i
            }
            i += 1
            newNum >>= 1
        }
        return result
    }
}
//C++
//class Solution {
//public:
//    int findComplement(int num) {
//        int result = 0;
//        int i = 0;
//        int newNum = num;
//        while(newNum) {
//            if ((newNum & 1) == 0)
//                result += 1 << i;
//
//            i += 1;
//            newNum >>= 1;
//        }
//        return result;
//    }
//};
