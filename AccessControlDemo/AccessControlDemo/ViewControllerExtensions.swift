//
//  UIViewControllerExtensions.swift
//  AccessControlDemo
//
//  Created by Alexey Danilov on 11.02.2018.
//  Copyright © 2018 danilovdev. All rights reserved.
//

// file ViewControllerExtensions.swift
import Foundation
import UIKit

extension ViewController {
    
    func outsideFunc() {
        // error here -  private function is not available in separate file
        privateFunc()
    }
}
