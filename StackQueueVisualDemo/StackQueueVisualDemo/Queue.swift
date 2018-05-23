//
//  Queue.swift
//  StackQueueVisualDemo
//
//  Created by Alexey Danilov on 23.05.2018.
//  Copyright © 2018 danilovdev. All rights reserved.
//

// FIFO - First In First Out
struct Queue<T> {

    var array: [T] = []

    var isEmpty: Bool {
        return array.isEmpty
    }

    // add new element to queue
    mutating func enqueue(_ element: T) {
        array.append(element)
    }

    // get the first element and remove it from queue
    mutating func dequeue() -> T? {
        if !array.isEmpty {
            let value = array.removeFirst()
            return value
        }
        return nil
    }

    // get the head of queue - the first element
    mutating func peek() -> T? {
        if !array.isEmpty {
            let value = array.first
            return value
        }
        return nil
    }

}
