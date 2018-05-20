//
//  ViewController.swift
//  PalindromeTest
//
//  Created by Alexey Danilov on 20.05.2018.
//  Copyright © 2018 danilovdev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func checkButtonTapped(_ sender: UIButton) {
        if let str = textField.text, str.count > 0 {
            let count = str.count
            var isPalindrome = true
            let queue = Queue()
            let stack = Stack()
            for ch in str {
                queue.enqueue(ch)
                stack.push(ch)
            }
            for _ in 0...(count / 2) {
                if queue.dequeue() != stack.pop() {
                    isPalindrome = false
                    break
                }
            }
            
            if isPalindrome {
                resultLabel.text = "Palindrome Found!"
            } else {
                resultLabel.text = "NOT Palindrome!"
            }
        } else {
            resultLabel.text = "Empty String"
        }
    }

}

