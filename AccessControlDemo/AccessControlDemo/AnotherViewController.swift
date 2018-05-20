//
//  AnotherViewController.swift
//  AccessControlDemo
//
//  Created by Alexey Danilov on 11.02.2018.
//  Copyright © 2018 danilovdev. All rights reserved.
//

// AnotherViewController.swift
import Foundation
import UIKit

class AnotherViewController: ViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let vc = ViewController()
        // error - fileprivate is not available in separate file
        vc.valueInFile
        // error - private is not available in separate file
        vc.testPrivate()
    }
}
