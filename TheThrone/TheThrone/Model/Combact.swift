//
//  Combact.swift
//  TheThrone
//
//  Created by Shankar K on 06/05/18.
//  Copyright © 2018 Shankar. All rights reserved.
//

import Foundation

class Combact : NSObject {
    
    var kingsName : String? = ""
    var wars : [String]?
    var battleScore : String?
    var attacksMade : String? = ""
    var defended : String? = ""
    var totalWins : String? = ""
    var AttacksWon : String? = ""
    var defendedSuccess : String? = ""

    init(_ dictionary : [String : Any] ) {
        
        if let temp = dictionary["name"] as? String
        {
            kingsName = temp
        }
        if let temp = dictionary["name"] as? String
        {
            kingsName = temp
        }
        if let temp = dictionary["battleScore"] as? String
        {
            battleScore = temp
        }
        
        if let temp = dictionary["attacksMade"] as? String
        {
            attacksMade = temp
        }
        
        if let temp = dictionary["defended"] as? String
        {
            defended = temp
        }

        if let temp = dictionary["totalWins"] as? String
        {
            totalWins = temp
        }
        
        if let temp = dictionary["AttacksWon"] as? String
        {
            AttacksWon = temp
        }

        if let temp = dictionary["defendedSuccess"] as? String
        {
            defendedSuccess = temp
        }
        
    }
}



