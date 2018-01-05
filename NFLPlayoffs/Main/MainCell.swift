//
//  MainCell.swift
//  NFLPlayoffs
//
//  Created by Amar Bhatia on 1/4/18.
//  Copyright © 2018 AmarBhatia. All rights reserved.
//

import UIKit

class MainCell: BaseCell {
    
    let division = ["NFC", "AFC"]
    let screenSize = UIScreen.main.bounds
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
//        imageView.image = .withRenderingMode(.alwaysOriginal)
        imageView.backgroundColor = .red
        imageView.contentMode = .scaleAspectFill
        imageView.layer.masksToBounds = true
        return imageView
    }()

    
    override func setupView() {
        super.setupView()
        
        backgroundColor = .green
        
        
        addSubview(imageView)
        _ = imageView.anchor(nil, left: nil, bottom: nil, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 100, heightConstant: 100)
        imageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
//        afcImageView.centerYAnchor.constraint(equalTo: centerYAnchor, constant: screenSize.height / 2).isActive = true
        
        
    }
    
    
}
