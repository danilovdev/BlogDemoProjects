//
//  Device.swift
//  AccessControlDemo
//
//  Created by Alexey Danilov on 11.02.2018.
//  Copyright © 2018 danilovdev. All rights reserved.
//

import Foundation
import UIKit

class Device {
    
    private var special: String!
    
    fileprivate var size: CGRect!
    
}

class Smartphone: Device {
    
    func work() {
        
        // error - private property is not available
        print(special)
        // fileprivate property is available
        print(size)
    }
    
}
