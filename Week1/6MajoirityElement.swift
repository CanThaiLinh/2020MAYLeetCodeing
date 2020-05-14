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
    func majorityElement(_ nums: [Int]) -> Int {
        var mark = [Int : Int]()
        for item in nums{
            if mark[item] == nil{
                mark[item] = 0
            }
            mark[item]! += 1
        }
        let valueCompare = nums.count / 2
        for item in nums{
            if mark[item]! > valueCompare{
                return item
            }
        }
        return -1
    }
}
//C++
//class Solution {
//public:
//    int majorityElement(vector<int>& nums) {
//        unordered_map<int, int> mark;
//        for (int index = 0 ; index < nums.size(); index ++){
//            mark[nums[index]]++;
//        }
//        int valueCompare = nums.size()/2;
//        for (int index = 0 ; index < nums.size(); index ++){
//            if (mark[nums[index]] > valueCompare ){
//                return nums[index];
//            }
//        }
//        return -1;
//    }
//};
