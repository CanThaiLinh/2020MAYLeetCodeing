//
//  ViewController.swift
//  StockPrices
//
//  Created by thailinh on 5/12/20.
//  Copyright © 2020 thailinh. All rights reserved.
//

import UIKit

//Swift
func firstUniqChar(_ s: String) -> Int {
    var mark = [Character : Int]()
    for char in s{
        if mark[char] == nil{
            mark[char] = 0
        }
        mark[char]! += 1
    }
    for (index, char) in s.enumerated(){
        if mark[char]! == 1{
            return index
        }
    }
    return -1
}
//C++
//class Solution {
//public:
//    int firstUniqChar(string s) {
//        int mark[58] = {0};
//        for (int index = 0 ; index < s.length(); index ++){
//            mark[s[index] - 65]++;
//        }
//        for (int index = 0 ; index < s.length(); index ++){
//            if (mark[s[index] - 65] == 1){
//                return index;
//            }
//        }
//        return -1;
//    }
//};
