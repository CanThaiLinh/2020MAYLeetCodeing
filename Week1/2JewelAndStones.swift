//
//  ViewController.swift
//  StockPrices
//
//  Created by thailinh on 5/12/20.
//  Copyright © 2020 thailinh. All rights reserved.
//

import UIKit
//Swift. u can use map for faster
class Solution {
    func numJewelsInStones(_ J: String, _ S: String) -> Int {
        var count = 0
        for stone in S{
            for jewel in J{
                if stone == jewel{
                    count += 1
                    break
                }
            }
        }
        return count
    }
}

//C++
//class Solution {
//public:
//    int numJewelsInStones(string J, string S) {
//        // not use Map. so it is slow.
//        int count = 0;
//        for (int i = 0; i < S.length() ; i ++ ){
//            char stone = S[i];
//            for (int j = 0 ; j < J.length() ; j ++){
//                if (stone == J[j]){
//                    count ++;
//                    break;
//                }
//            }
//        }
//        return count;
//    }
//};
