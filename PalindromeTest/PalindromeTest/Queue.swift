//
//  Queue.swift
//  PalindromeTest
//
//  Created by Alexey Danilov on 20.05.2018.
//  Copyright © 2018 danilovdev. All rights reserved.
//

import Foundation

// FIFO - First In First Out
class Queue {
    
    private var array: [Character]
    
    init() {
        array = []
    }
    
    // add new element to queue
    func enqueue(_ element: Character) {
        array.append(element)
    }
    
    // get the first element and remove it from queue
    func dequeue() -> Character? {
        if !array.isEmpty {
            let value = array.removeFirst()
            return value
        } else {
            return nil
        }
    }
    
    // get the head of queue - the first element
    func peek() -> Character? {
        if !array.isEmpty {
            let value = array.first
            return value
        } else {
            return nil
        }
    }
}
