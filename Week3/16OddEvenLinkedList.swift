//
//  ViewController.swift
//  StockPrices
//
//  Created by thailinh on 5/18/20.
//  Copyright © 2020 thailinh. All rights reserved.
//

import UIKit

class Solution {
    func oddEvenList(_ head: ListNode?) -> ListNode? {
        guard var oddHead = head else{return nil}
        var even = head?.next
        var evenHead = even
        while ( even != nil && even?.next != nil ){
            oddHead.next = even?.next
            oddHead = oddHead.next!
            even?.next = oddHead.next
            even = even?.next
        }
        oddHead.next = evenHead
        return head
    }
}
