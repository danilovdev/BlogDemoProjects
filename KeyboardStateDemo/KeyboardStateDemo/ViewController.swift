//
//  ViewController.swift
//  MovingViewForKeyboard
//
//  Created by Alexey Danilov on 01.02.2018.
//  Copyright © 2018 danilovdev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var keyboardStatusLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let status = (UIApplication.shared.delegate as! AppDelegate).isVisible
        keyboardStatusLabel.text = "\(status)"
    }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    @IBAction func getStatusButtonTapped(_ sender: UIButton) {
        let status = (UIApplication.shared.delegate as! AppDelegate).isVisible
        keyboardStatusLabel.text = "\(status)"
    }
    

    


}

