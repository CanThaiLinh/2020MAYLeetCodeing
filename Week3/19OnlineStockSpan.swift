//
//  ViewController.swift
//  StockPrices
//
//  Created by thailinh on 5/20/20.
//  Copyright © 2020 thailinh. All rights reserved.
//

import UIKit

class StockSpanner {
    private var listPrices : [Int]!
    private var listSpans : [Int]!

    init() {
        listPrices = [Int]()
        listSpans = [Int]()
    }
    
    func next(_ price: Int) -> Int {
        guard listPrices.count > 0 else{
            listPrices.append(price)
            listSpans.append(1)
            return 1
        }
        var span : Int = 1
        var index : Int = listPrices.count - 1
        while index >= 0{
            let considerPrice = listPrices[index]
            let considerSpan = listSpans[index]
            if considerPrice > price{
                break
            }
            span += considerSpan
            index -= considerSpan
        }
        listPrices.append(price)
        listSpans.append(span)
        return span
    }
}
