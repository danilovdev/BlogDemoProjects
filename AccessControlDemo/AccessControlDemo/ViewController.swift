//
//  ViewController.swift
//  AccessControlDemo
//
//  Created by Alexey Danilov on 11.02.2018.
//  Copyright © 2018 danilovdev. All rights reserved.
//

// ViewController.swift
import UIKit

class ViewController: UIViewController {
    
    fileprivate var valueInFile = 55
    
    private func testPrivate() {
        print("This is private function")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // private function is available here
        testPrivate()
        print(valueInFile)
    }

}

extension ViewController {
    
    func extFunc() {
        // private function is available in extension in the same file
        // outside its scope private members can be only available in extension in the same file
        testPrivate()
        
        // fileprivate property is available
        print(valueInFile)
    }
}

class MyViewController: ViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // fileprivate property is available
        // it is another class but the same file
        print(valueInFile)
        
        // error because here private function is NOT available
        testPrivate()
        
        
    }
    
    
}

