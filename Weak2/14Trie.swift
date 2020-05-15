//
//  ViewController.swift
//  StockPrices
//
//  Created by thailinh on 5/15/20.
//  Copyright © 2020 thailinh. All rights reserved.
//

import UIKit

struct TrieNode{
    var isword = false
    var next : [TrieNode?] = Array(repeating: nil, count: 26)
}
// TRIE
class Trie {
    private var root : TrieNode!
    func find(s : String) -> TrieNode?{
        var rootTemp = root
        for char in s{
            let index : Int = Int(char.unicodeScalars.first!.value - 97)
            if rootTemp!.next[index] == nil{
                return nil
            }
            
            rootTemp = rootTemp!.next[index]
        }
        return rootTemp
    }
    
    /** Initialize your data structure here. */
    init() {
        root = TrieNode()
    }
    
    /** Inserts a word into the trie. */
    func insert(_ word: String) {
        insertRecursive(node: &root!, index: 0, word: word)
    }
    func insertRecursive(node : inout TrieNode, index : Int, word : String){
        guard index < word.count else{
            node.isword = true
            return
        }
        
        let char = getCharacterAtIndex(index: index, string: word)
        let idx : Int = Int(char.unicodeScalars.first!.value - 97)

        if (node.next[idx] == nil){
            node.next[idx] = TrieNode()
        }
        insertRecursive(node: &node.next[idx]!, index: index + 1, word: word)
        
    }
    func getCharacterAtIndex(index : Int, string : String) -> Character{
        let indexStr = string.index(string.startIndex, offsetBy: index)
        return string[indexStr]
    }
    /** Returns if the word is in the trie. */
    func search(_ word: String) -> Bool {
        let rootTemp = find(s: word)
        if rootTemp != nil && rootTemp?.isword == true{
            return true
        }
        return false
    }
    
    /** Returns if there is any word in the trie that starts with the given prefix. */
    func startsWith(_ prefix: String) -> Bool {
        if find(s: prefix) == nil{
            return false
        }
        return true
    }
    
}
