//
//  Stack.swift
//  StackQueueVisualDemo
//
//  Created by Alexey Danilov on 23.05.2018.
//  Copyright © 2018 danilovdev. All rights reserved.
//

// LIFO - Last In First Out
struct Stack<T> {
    
    var array: [T] = []
    
    var isEmpty: Bool {
        return array.isEmpty
    }
    
    // add new element to the stack
    mutating func push(_ element: T) {
        array.append(element)
    }
    
    // get the last element from the stack and remove it form stack
    mutating func pop() -> T? {
        if !isEmpty {
            let value = array.popLast()
            return value
        }
        return nil
    }
    
    // get the head of stack - the last element
    func peek() -> T? {
        if !isEmpty {
            let value = array.last
            return value
        }
        return nil
    }
    
}
