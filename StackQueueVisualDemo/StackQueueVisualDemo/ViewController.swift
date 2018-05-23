//
//  ViewController.swift
//  StackQueueVisualDemo
//
//  Created by Alexey Danilov on 23.05.2018.
//  Copyright © 2018 danilovdev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stackTextView: UITextView!
    
    @IBOutlet weak var queueTextView: UITextView!
    
    @IBOutlet weak var stackResultLabel: UILabel!
    
    @IBOutlet weak var queueResultLabel: UILabel!
    
    var stack = Stack<Int>()
    
    var queue = Queue<Int>()
    
    var stack = Stack<String>()
    
    var queue = Queue<String>()
    
    var stack = Stack<Any>()
    
    var queue = Queue<Any>()
    
    @IBAction private func addNumberButtonTapped(_ sender: UIButton) {
        let randomNumer = Int(arc4random_uniform(100))
        
        stack.push(randomNumer)
        queue.enqueue(randomNumer)
        
        updateTextViews()
    }
    
    
    @IBAction func resetButtonTapped(_ sender: Any) {
        stack.array = []
        queue.array = []
        updateTextViews()
        stackResultLabel.text = "From Stack:"
        queueResultLabel.text = "From Queue:"
    }
    
    @IBAction private func getNumberButtonTapped(_ sender: UIButton) {
        let stackValue = stack.pop()
        let stackValueStr = stackValue != nil ? String(stackValue!) : "No value"
        
        let queueValue = queue.dequeue()
        let queueValueStr = queueValue != nil ? String(queueValue!) : "No value"
        
        stackResultLabel.text = "From Stack: \(stackValueStr)"
        queueResultLabel.text = "From Queue: \(queueValueStr)"
        
        updateTextViews()
    }
    
    private func updateTextViews() {
        stackTextView.text = "End\n" + stack.array.reversed().map { "\($0)\n" }.joined() + "Begin"
        queueTextView.text = "End\n" + queue.array.reversed().map { "\($0)\n" }.joined() + "Begin"
    }

}
