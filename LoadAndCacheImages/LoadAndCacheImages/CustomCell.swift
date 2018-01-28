//
//  CustomCell.swift
//  LoadAndCacheImages
//
//  Created by Alexey Danilov on 27.01.2018.
//  Copyright © 2018 danilovdev. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    
    private let customImageView: CustomImageView = {
        let imageView = CustomImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    var imageUrl: String? {
        didSet {
            if let imageUrl = imageUrl {
                customImageView.loadImageWithUrl(urlString: imageUrl)
            }
        }
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        
        addSubview(customImageView)
        customImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
        customImageView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10).isActive = true
        customImageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        customImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10).isActive = true
        customImageView.heightAnchor.constraint(equalToConstant: 140).isActive = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
