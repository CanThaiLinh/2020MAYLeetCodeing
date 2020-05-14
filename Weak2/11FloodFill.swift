//
//  ViewController.swift
//  StockPrices
//
//  Created by thailinh on 5/13/20.
//  Copyright © 2020 thailinh. All rights reserved.
//

import UIKit

class Solution {
    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ newColor: Int) -> [[Int]] {
        let currentColor = image[sr][sc]
        if currentColor == newColor{
            return image
        }
        
        var newImage = image
        newImage[sr][sc] = newColor
        return fillColor(newImage, sr, sc, newColor, currentColor)
    }
    
    func fillColor(_ image: [[Int]], _ sr: Int, _ sc: Int, _ newColor: Int,_ oldColor : Int) -> [[Int]] {
        var newImage = image
        let dx = [-1,1,0,0]
        let dy = [0,0,1,-1]
        for index in 0...3{
            let newX = sr + dx[index]
            let newY = sc + dy[index]
            if newX >= 0 && newX < image.count && newY >= 0 && newY < image[newX].count
            && image[newX][newY] == oldColor
            {
                newImage[newX][newY] = newColor
                newImage = fillColor(newImage, newX, newY, newColor, oldColor)
            }
        }
        return newImage
    }
}
