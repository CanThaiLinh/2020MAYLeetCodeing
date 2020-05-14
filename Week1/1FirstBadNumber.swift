//
//  ViewController.swift
//  StockPrices
//
//  Created by thailinh on 5/12/20.
//  Copyright © 2020 thailinh. All rights reserved.
//

import UIKit

//Swift
class Solution : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        var left = 1
        var right = n
        var mid = n/2
        while (left < right){
            mid = left + (right - left) / 2
            if isBadVersion(mid) {
                right = mid
            }else{
                left = mid + 1
            }
        }
        return left
    }
}
//C++
/*
class Solution {
public:
    int firstBadVersion(int n) {
        int left = 1;
        int right = n;
        int mid = n/2;
        while (left < right){
            mid = left + ( right - left) / 2 ;
            if (isBadVersion(mid)){
                right = mid;
            }else{
                left = mid + 1;
            }
        }
        return left;
    }
};
*/
