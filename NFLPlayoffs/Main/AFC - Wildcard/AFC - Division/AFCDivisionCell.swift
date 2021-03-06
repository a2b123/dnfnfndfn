//
//  AFCDivisionalCell.swift
//  NFLPlayoffs
//
//  Created by Amar Bhatia on 1/4/18.
//  Copyright © 2018 AmarBhatia. All rights reserved.
//

import UIKit

class AFCDivisionCell: BaseCell {
    
    var afcWildcardOnePicked: TeamModel?
    
    var afcDivision: TeamModel? {
        didSet {
            
            if let teamImageView = afcDivision?.teamLogo {
                teamLogo.image = teamImageView
            }
            
            teamLabel.text = afcDivision?.teamName
            teamRecordLabel.text = afcDivision?.teamRecord
            if let seed = afcDivision?.seed {
                seedLabel.text = "\(seed)"
            }
            
        }
    }
    
    let teamLogo: UIImageView = {
        let iv = UIImageView()
        //        iv.image = #imageLiteral(resourceName: "nfl58")
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
//        iv.backgroundColor = .orange
        iv.layer.cornerRadius = 24
        return iv
    }()
    
    let teamLabel: UILabel = {
        let label = UILabel()
        label.text = "New England Patriots"
        label.font = UIFont.systemFont(ofSize: 12)
        label.numberOfLines = 0
        label.textColor = .black
        label.textAlignment = .center
//        label.backgroundColor = .green
        return label
    }()
    
    let teamRecordLabel: UILabel = {
        let label = UILabel()
        label.text = "16-0"
        label.font = UIFont.systemFont(ofSize: 12)
        label.numberOfLines = 0
        label.textColor = .black
        label.textAlignment = .center
//        label.backgroundColor = .purple
        return label
    }()
    
    let seedLabel: UILabel = {
        let label = UILabel()
        label.text = "#"
        label.font = UIFont.systemFont(ofSize: 12)
        label.numberOfLines = 0
        label.textColor = .black
        label.textAlignment = .center
//        label.backgroundColor = .yellow
        return label
    }()
    
    
    override func setupView() {
        super.setupView()
        
        addSubview(teamLogo)
        addSubview(teamLabel)
        addSubview(teamRecordLabel)
        addSubview(seedLabel)
        
        _ = teamLogo.anchor(nil, left: leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 48, heightConstant: 48)
        teamLogo.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        _ = seedLabel.anchor(nil, left: nil, bottom: nil, right: rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 12, widthConstant: 40, heightConstant: 50)
        seedLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        
        _ = teamRecordLabel.anchor(nil, left: nil, bottom: nil, right: seedLabel.leftAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 12, widthConstant: 40, heightConstant: 50)
        teamRecordLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        
        _ = teamLabel.anchor(nil, left: teamLogo.rightAnchor, bottom: nil, right: teamRecordLabel.leftAnchor, topConstant: 0, leftConstant: 12, bottomConstant: 0, rightConstant: 12, widthConstant: 0, heightConstant: 50)
        teamLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        
        
        
        
        
        
    }
}
