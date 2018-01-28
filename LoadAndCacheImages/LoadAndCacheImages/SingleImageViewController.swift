//
//  ViewController.swift
//  LoadAndCacheImages
//
//  Created by Alexey Danilov on 26.01.2018.
//  Copyright © 2018 danilovdev. All rights reserved.
//

import UIKit

class SingleImageViewController: UIViewController {
    
    @IBOutlet var imageView: CustomImageView!
    
    let urlStr = "https://cdn.pixabay.com/photo/2017/05/07/08/56/pancakes-2291908_960_720.jpg"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.loadImageWithUrl(urlString: urlStr)
        
    }

}

