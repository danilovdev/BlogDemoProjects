//
//  Stack.swift
//  PalindromeTest
//
//  Created by Alexey Danilov on 20.05.2018.
//  Copyright © 2018 danilovdev. All rights reserved.
//

import Foundation

// LIFO - Last In First Out
class Stack {
    
    var array: [Character]
    
    init() {
        array = []
    }
    
    // add new element to the stack
    func push(_ element: Character) {
        array.append(element)
    }
    
    // get the last element from the stack and remove it form stack
    func pop() -> Character? {
        if !array.isEmpty {
            let value = array.removeLast()
            return value
        } else {
            return nil
        }
    }
    
    // get the head of stack - the last element
    func peek() -> Character? {
        if !array.isEmpty {
            let value = array.last
            return value
        } else {
            return nil
        }
    }
}
