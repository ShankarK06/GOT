//
//  Constant.swift
//  TheThrone
//
//  Created by Shankar K on 06/05/18.
//  Copyright © 2018 Shankar. All rights reserved.
//

import Foundation
import UIKit

struct Constants {
    
    struct BaseURL {
        static let baseURL = "http://starlord.hackerearth.com/gotjson"
    }
    
    struct ViewControllerIdentifiers {
        static let battleDetailViewController = "DetailViewController"
        static let BattleViewController = "BattleListViewController"
    }
    
    struct TableViewCellIdentifiers {
        static let battleCellIdentifier = "BattleCardTableViewCell"
        static let combactCellIdentifier = "DetailTableViewCell"

    }
    
    struct CustomCellIdentifiers {
        static let battleCard = "battleCardCell"
        static let CombactCell = "CombactCell"

    }

    struct ImageAssest {
        // Icon for Kings
        static let kingStark = UIImage.init(named: "Stark")
        static let kingGreyjoy = UIImage.init(named: "Greyjoy")
        static let kingLannister = UIImage.init(named: "Lannister")
        static let kingMance = UIImage.init(named: "Mance")
        static let kingRenly = UIImage.init(named: "Renly")
        static let kingStannis = UIImage.init(named: "Stannis")
        static let kingTully = UIImage.init(named: "Tully")
        // Icon for cards
        static let winIcon = UIImage.init(named: "Win")
        static let Attack = UIImage.init(named: "Attack")
        static let Defence = UIImage.init(named: "Defence")
        
    }

    
}

