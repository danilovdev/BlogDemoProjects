//
//  VC3.swift
//  UnwindSegueDemo
//
//  Created by Alexey Danilov on 28.02.2018.
//  Copyright © 2018 danilovdev. All rights reserved.
//

import UIKit

class VC3: UIViewController {
    
    @IBAction func dismissVC(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    @IBAction func goBackToVC1(_ sender: UIButton) {
        performSegue(withIdentifier: "unwindSegueToVC1", sender: self)
    }
    
}
