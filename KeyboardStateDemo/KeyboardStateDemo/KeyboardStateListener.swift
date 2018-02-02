//
//  KeyboardStateListener.swift
//  MovingViewForKeyboard
//
//  Created by Alexey Danilov on 02.02.2018.
//  Copyright © 2018 danilovdev. All rights reserved.
//

import Foundation

class KeyboardStateListener {
    
    static let shared = KeyboardStateListener()
    
    var isVisible = false
    
    func start() {
        NotificationCenter.default.addObserver(self, selector: #selector(handleShow),
                                               name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(handleHide),
                                               name: NSNotification.Name.UIKeyboardWillHide, object: nil)
    }
    
    @objc func handleShow()
    {
        isVisible = true
    }
    
    @objc func handleHide()
    {
        isVisible = false
    }
    
    func stop() {
        NotificationCenter.default.removeObserver(self)
    }
}

