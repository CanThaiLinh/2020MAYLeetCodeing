//
//  ViewController.swift
//  StockPrices
//
//  Created by thailinh on 5/18/20.
//  Copyright © 2020 thailinh. All rights reserved.
//

import UIKit

class Solution {
    func findAnagrams(_ s: String, _ p: String) -> [Int] {
        var results = [Int]()
        
        let lengthOfP = p.count
        let lengthOfS = s.count
     
        
        if(lengthOfS==0||lengthOfS<lengthOfP){return results}
        
        let newS = s.map { Int($0.asciiValue! - 97) }
        let newP = p.map { Int($0.asciiValue! - 97) }
        
        var markCharactersOfP = Array(repeating: 0, count: 26)
        var markCharactersOfS = Array(repeating: 0, count: 26)
        
        for index in 0..<p.count {
            markCharactersOfP[newP[index]] += 1
            
            markCharactersOfS[newS[index]] += 1
        }
        
        if compareArray(left: markCharactersOfS, right: markCharactersOfP){
            results.append(0)
        }

        for index in (lengthOfP)..<lengthOfS{
            
            markCharactersOfS[newS[index]] += 1
            markCharactersOfS[newS[index - lengthOfP]] -= 1

            if compareArray(left: markCharactersOfS, right: markCharactersOfP){
                results.append(index - lengthOfP + 1)
            }
        }
        
        return results
    }
    func compareArray (left : [Int], right :  [Int]) -> Bool {
        // left count == right count
        for index in 0..<left.count{
            if left[index] != right[index]{
                return false
            }
        }
        return true
    }

}
