//
//  GameInfoModel.swift
//  NFLPlayoffs
//
//  Created by Amar Bhatia on 1/4/18.
//  Copyright © 2018 AmarBhatia. All rights reserved.
//

import UIKit

class GameInfoModel: NSObject {
    var tvChannel: String?
    var startTime: String?
    var spread: String?
    var weatherIcon: UIImage?
    
    init(tvChannel: String?, startTime: String?, spread: String?, weatherIcon: UIImage?) {
        self.tvChannel = tvChannel
        self.startTime = startTime
        self.spread = spread
        self.weatherIcon = weatherIcon
    }
        
}

