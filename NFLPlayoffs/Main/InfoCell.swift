//
//  InfoCell.swift
//  NFLPlayoffs
//
//  Created by Amar Bhatia on 1/4/18.
//  Copyright © 2018 AmarBhatia. All rights reserved.
//

import UIKit

class InfoCell: BaseCell {
    
    var info: TeamModel? {
        didSet {
            gametimeLabel.text = info?.gameInfo?.startTime
            channelLabel.text = info?.gameInfo?.tvChannel
            spreadlLabel.text = info?.gameInfo?.spread
        }
    }
    
    let gametimeLabel: UILabel = {
        let label = UILabel()
        label.text = "Sunday January 7th @ 0:00"
        label.textColor = .white
        label.textAlignment = .center
//        label.font = UIFont(name: "Avenir-Light", size: 26)
        label.font = UIFont.systemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let channelLabel: UILabel = {
        let label = UILabel()
        label.text = "ESPN"
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()

    let spreadlLabel: UILabel = {
        let label = UILabel()
        label.text = "-3.0"
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    
    let weatherImageView: UIImageView = {
        let imageView = UIImageView()
//        imageView.image = #imageLiteral(resourceName: "oppop")
        imageView.backgroundColor = .purple
        imageView.contentMode = .scaleAspectFill
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 50
        return imageView
    }()
    
    override func setupView() {
        super.setupView()
        
        backgroundColor = .black
        
        
        addSubview(gametimeLabel)
        addSubview(channelLabel)
        addSubview(spreadlLabel)
        
        _ = channelLabel.anchor(topAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, topConstant: 10, leftConstant: 20, bottomConstant: 0, rightConstant: 20, widthConstant: 0, heightConstant: 30)
        
        _ = gametimeLabel.anchor(nil, left: leftAnchor, bottom: nil, right: rightAnchor, topConstant: 0, leftConstant: 20, bottomConstant: 0, rightConstant: 20, widthConstant: 0, heightConstant: 30)
        gametimeLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        _ = spreadlLabel.anchor(nil, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 20, bottomConstant: 10, rightConstant: 20, widthConstant: 0, heightConstant: 30)
        

    }
}
