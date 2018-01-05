//
//  TeamModel.swift
//  NFLPlayoffs
//
//  Created by Amar Bhatia on 1/4/18.
//  Copyright © 2018 AmarBhatia. All rights reserved.
//

import UIKit

class TeamModel: NSObject {
    var teamName: String?
    var teamLogo: UIImage?
    var teamRecord: String?
    var seed: Int?
    var city: String?
    
    var selected = false
    
    var gameInfo: GameInfoModel?

    
    init(teamName: String?, teamLogo: UIImage?, city: String?, teamRecord: String?, seed: Int?, gameInfo: GameInfoModel?) {
        self.teamName = teamName
        self.teamLogo = teamLogo
        self.city = city
        self.teamRecord = teamRecord
        self.seed = seed
        self.gameInfo = gameInfo
    }
    
    static func nfcWildcardTeams() -> ([TeamModel]) {
        var nfcWildcardTeams = [TeamModel]()
        
        let emptyGameInfo = GameInfoModel(tvChannel: "", startTime: "", spread: "", weatherIcon: #imageLiteral(resourceName: "sun"))
        
        let panthersSaintsGameInfo = GameInfoModel(tvChannel: "NBC", startTime: "Sunday, January 7th @ 3:40 PM CST", spread: "-6 Saints", weatherIcon: #imageLiteral(resourceName: "sun").withRenderingMode(.alwaysOriginal))
        
        let falconsRamsGameInfo = GameInfoModel(tvChannel: "FOX", startTime: "Saturday, January 6th @ 7:15 PM CST", spread: "-5 Rams", weatherIcon: #imageLiteral(resourceName: "sun").withRenderingMode(.alwaysOriginal))

        
        // Item 1
        let panthers = TeamModel(teamName: "Panthers", teamLogo: #imageLiteral(resourceName: "panthers"), city: "Carolina", teamRecord: "11-5", seed: 5, gameInfo: emptyGameInfo)
        nfcWildcardTeams.append(panthers)
        
        // Item 2
        let game1Info = TeamModel(teamName: "", teamLogo: #imageLiteral(resourceName: "nfc"), city: "", teamRecord: "", seed: 0, gameInfo: panthersSaintsGameInfo)
        nfcWildcardTeams.append(game1Info)
        
        // Item 3
        let saints = TeamModel(teamName: "Saints", teamLogo: #imageLiteral(resourceName: "saints"), city: "New Orleans", teamRecord: "11-5", seed: 4, gameInfo: emptyGameInfo)
        nfcWildcardTeams.append(saints)
        
        // Item 4
        let empty = TeamModel(teamName: "", teamLogo: #imageLiteral(resourceName: "nfc"), city: "", teamRecord: "", seed: 0, gameInfo: emptyGameInfo)
        nfcWildcardTeams.append(empty)
        
        // Item 5
        let falcons = TeamModel(teamName: "Falcons", teamLogo: #imageLiteral(resourceName: "falcons"), city: "Atlanta", teamRecord: "10-6", seed: 6, gameInfo: emptyGameInfo)
        nfcWildcardTeams.append(falcons)
        
        // Item 6
        let game2Info = TeamModel(teamName: "", teamLogo: #imageLiteral(resourceName: "nfc"), city: "", teamRecord: "", seed: 0, gameInfo: falconsRamsGameInfo)
        nfcWildcardTeams.append(game2Info)
        
        // Item 7
        let rams = TeamModel(teamName: "Rams", teamLogo: #imageLiteral(resourceName: "rams"), city: "Los Angeles", teamRecord: "11-5", seed: 3, gameInfo: emptyGameInfo)
        nfcWildcardTeams.append(rams)
        
        return (nfcWildcardTeams)
    }
    
    
    static func afcWildcardTeams() -> ([TeamModel]) {
        var afcWildcardTeams = [TeamModel]()
        
        let emptyGameInfo = GameInfoModel(tvChannel: "", startTime: "", spread: "", weatherIcon: #imageLiteral(resourceName: "sun"))
        
        let titansChiefsGameInfo = GameInfoModel(tvChannel: "ESPN / ABC", startTime: "Saturday, January 6th @ 3:35 PM CST", spread: "-8 Cheifs", weatherIcon: #imageLiteral(resourceName: "sun").withRenderingMode(.alwaysOriginal))
        
        let billsJagsGameInfo = GameInfoModel(tvChannel: "CBS", startTime: "Saturday, January 7th @ 12:00 PM CST", spread: "-8.5 Jaguars", weatherIcon: #imageLiteral(resourceName: "sun").withRenderingMode(.alwaysOriginal))
        
        
        // Item 1
        let tennessee = TeamModel(teamName: "Titans", teamLogo: #imageLiteral(resourceName: "titans"), city: "Tennessee", teamRecord: "9-7", seed: 5, gameInfo: emptyGameInfo)
        afcWildcardTeams.append(tennessee)
        
        // Item 2
        let game1Info = TeamModel(teamName: "", teamLogo: #imageLiteral(resourceName: "afc"), city: "", teamRecord: "", seed: 0, gameInfo: titansChiefsGameInfo)
        afcWildcardTeams.append(game1Info)
        
        // Item 3
        let cheifs = TeamModel(teamName: "Chiefs", teamLogo: #imageLiteral(resourceName: "chiefs"), city: "Kansas Cheifs", teamRecord: "10-6", seed: 4, gameInfo: emptyGameInfo)
        afcWildcardTeams.append(cheifs)
        
        // Item 4
        let empty = TeamModel(teamName: "", teamLogo: #imageLiteral(resourceName: "afc"), city: "", teamRecord: "", seed: 0, gameInfo: emptyGameInfo)
        afcWildcardTeams.append(empty)
        
        // Item 5
        let bills = TeamModel(teamName: "Bills", teamLogo: #imageLiteral(resourceName: "bills"), city: "Buffalo", teamRecord: "9-7", seed: 6, gameInfo: emptyGameInfo)
        afcWildcardTeams.append(bills)
        
        // Item 6
        let game2Info = TeamModel(teamName: "", teamLogo: #imageLiteral(resourceName: "afc"), city: "", teamRecord: "", seed: 0, gameInfo: billsJagsGameInfo)
        afcWildcardTeams.append(game2Info)
        
        // Item 7
        let jags = TeamModel(teamName: "Jaguars", teamLogo: #imageLiteral(resourceName: "jaguars"), city: "Jacksonville", teamRecord: "10-6", seed: 3, gameInfo: emptyGameInfo)
        afcWildcardTeams.append(jags)
        
        return (afcWildcardTeams)
    }
    
    static func afcDivisionTeam() -> ([TeamModel]) {
        var afcDivisionTeams = [TeamModel]()
        
        let emptyGameInfo = GameInfoModel(tvChannel: "", startTime: "", spread: "", weatherIcon: #imageLiteral(resourceName: "sun"))
        
        let patriotsGameInfo = GameInfoModel(tvChannel: "TBD", startTime: "January 13th / January 14th", spread: "TBD", weatherIcon: #imageLiteral(resourceName: "sun").withRenderingMode(.alwaysOriginal))
        
        let steelersGameInfo = GameInfoModel(tvChannel: "CBS", startTime: "January 13th / January 14th", spread: "TBD", weatherIcon: #imageLiteral(resourceName: "sun").withRenderingMode(.alwaysOriginal))
        
        // Item 1
        let patriotsOpponent = TeamModel(teamName: "", teamLogo: #imageLiteral(resourceName: "afc"), city: "", teamRecord: "", seed: 0, gameInfo: emptyGameInfo)
        afcDivisionTeams.append(patriotsOpponent)
        
        // Item 2
        let game1Info = TeamModel(teamName: "", teamLogo: #imageLiteral(resourceName: "afc"), city: "", teamRecord: "", seed: 0, gameInfo: patriotsGameInfo)
        afcDivisionTeams.append(game1Info)
        
        // Item 3
        let patriots = TeamModel(teamName: "Patriots", teamLogo: #imageLiteral(resourceName: "patriots"), city: "New England", teamRecord: "13-3", seed: 1, gameInfo: emptyGameInfo)
        afcDivisionTeams.append(patriots)
        
        // Item 4
        let empty = TeamModel(teamName: "", teamLogo: #imageLiteral(resourceName: "afc"), city: "", teamRecord: "", seed: 0, gameInfo: emptyGameInfo)
        afcDivisionTeams.append(empty)
        
        // Item 5
        let steelersOpponent = TeamModel(teamName: "", teamLogo: #imageLiteral(resourceName: "afc"), city: "", teamRecord: "", seed: 0, gameInfo: emptyGameInfo)
        afcDivisionTeams.append(steelersOpponent)
        
        // Item 6
        let game2Info = TeamModel(teamName: "", teamLogo: #imageLiteral(resourceName: "afc"), city: "", teamRecord: "", seed: 0, gameInfo: steelersGameInfo)
        afcDivisionTeams.append(game2Info)

        // Item 7
        let steelers = TeamModel(teamName: "Steelers", teamLogo: #imageLiteral(resourceName: "steelers"), city: "Pittsburgh", teamRecord: "13-3", seed: 2, gameInfo: emptyGameInfo)
        afcDivisionTeams.append(steelers)

        return afcDivisionTeams

    }
    
    

}





