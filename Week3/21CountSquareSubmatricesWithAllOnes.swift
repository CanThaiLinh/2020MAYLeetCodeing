//
//  ViewController.swift
//  kthSmallest
//
//  Created by thailinh on 5/21/20.
//  Copyright © 2020 thailinh. All rights reserved.
//

import UIKit

class Solution {
    func countSquares(_ matrix: [[Int]]) -> Int {
        var newMatrix = matrix
        let rowLength = newMatrix.count
        if rowLength == 0 {return 0}
        let colLength = newMatrix[0].count
        var result = 0
        
        for indexRow in 0..<rowLength{
            for indexCol in 0..<colLength{
                // Case : value is zero. Not care
                if newMatrix[indexRow][indexCol] == 0{continue}
                // the value here is one
                // Case : the bolder cell is one. maxmium square = 1. indexRow and indexCol is the bottom right of square to calculate
                if indexRow == 0 || indexCol == 0{
                    result += 1
                    continue
                }
                // Case : inner cell is one.
                // check : left cell, up cell, diagonal. if all is one => add 1 to newMatrix[indexRow][indexCol] and the square is lagger than 1 (value is 2)
                // Do this for all value. we can store the last value and do not calculate duplicate.
                // so we find the minium of left cell, up cell, diagonal cell and add to current cell.
                // indexRow and indexCol is the bottom right of square to calculate
                let upCell = newMatrix[indexRow - 1][indexCol]
                let leftCell = newMatrix[indexRow ][indexCol - 1]
                let diagonalCell = newMatrix[indexRow - 1][indexCol - 1]
                let minValue = min(upCell, min(leftCell , diagonalCell ))
                newMatrix[indexRow][indexCol] += minValue
                result += newMatrix[indexRow] [indexCol]
            }
        }
        return result
    }
}
