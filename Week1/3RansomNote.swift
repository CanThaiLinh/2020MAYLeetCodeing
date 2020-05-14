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
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        if ransomNote.count > magazine.count {
            return false
        }
        if ransomNote.count == 0 && magazine.count == 0 {
            return true
        }
        var mark = [Character : Int]()
        for char in magazine{
            if mark[char] == nil{
                mark[char] = 0
            }
            mark[char]! += 1
        }
        for char in ransomNote{
            if mark[char] == nil || mark[char] == 0{
                return false
            }
            mark[char]! -= 1
        }
        return true
    }
}
//C++
//class Solution {
//public:
//    bool canConstruct(string ransomNote, string magazine) {
//        if (ransomNote.size() > magazine.size())
//            return false;
//        if (ransomNote.size() == 0 && magazine.size() == 0)
//            return true;
//
//        int mark[26] = {0};
//        for (char c: magazine)
//            mark[c-97]++;
//
//        for (char c: ransomNote) {
//            if (mark[c-97] == 0)
//                return false;
//            mark[c-97]--;
//        }
//
//        return true;
//    }
//};
