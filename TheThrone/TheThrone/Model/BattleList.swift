//
//  BattleList.swift
//  TheThrone
//
//  Created by Shankar K on 06/05/18.
//  Copyright © 2018 Shankar. All rights reserved.
//

import Foundation

class Battle : NSObject {
    
    var name : String? = ""
    var year : Int?
    var battleNumber : Int?
    var attackerKing : String? = ""
    var defenderKing : String? = ""
    var attackerOne : String? = ""
    var attackerTwo : String? = ""
    var attackerThree : String? = ""
    var attackerFour : String? = ""
    var defenderOne : String? = ""
    var defenderTwo : String? = ""
    var defenderThree : String? = ""
    var defenderFour : String? = ""
    var attackerOutcome : String? = ""
    var battleType : String? = ""
    var majorDeath : Int?
    var majorCapture : Int?
    var attackerSize : String? = ""
    var defenderSize : String? = ""
    var attackerCommander : String? = ""
    var defenderCommander : String? = ""
    var summer : String? = ""
    var location : String? = ""
    var region : String? = ""
    var note : String? = ""

    init(_ dictionary : [String : Any] ) {
        
        if let temp = dictionary["name"] as? String
        {
            name = temp
        }
        
        if let tempYear = dictionary["year"] as? Int
        {
            year = tempYear
        }
        
        if let temp = dictionary["battle_number"] as? Int
        {
            battleNumber = temp
        }

        if let temp = dictionary["attacker_king"] as? String
        {
            attackerKing = temp
        }
        
        if let temp = dictionary["defender_king"] as? String
        {
            defenderKing = temp
        }
        
        if let temp = dictionary["attacker_1"] as? String
        {
            attackerOne = temp
        }
        
        if let temp = dictionary["attacker_2"] as? String
        {
            attackerTwo = temp
        }
        
        if let temp = dictionary["attacker_3"] as? String
        {
            attackerThree = temp
        }
        
        if let temp = dictionary["attacker_4"] as? String
        {
            attackerFour = temp
        }
        
        if let temp = dictionary["defender_1"] as? String
        {
            defenderOne = temp
        }
        
        if let temp = dictionary["defender_2"] as? String
        {
            defenderTwo = temp
        }
        
        if let temp = dictionary["defender_3"] as? String
        {
            defenderThree = temp
        }
        
        if let temp = dictionary["defender_4"] as? String
        {
            defenderFour = temp
        }

        if let temp = dictionary["attacker_outcome"] as? String
        {
            attackerOutcome = temp
        }
        
        if let temp = dictionary["battle_type"] as? String
        {
            battleType = temp
        }
        
        if let tempYear = dictionary["major_death"] as? Int
        {
            majorDeath = tempYear
        }
        
        if let temp = dictionary["major_capture"] as? Int
        {
            majorCapture = temp
        }

        if let temp = dictionary["attacker_size"] as? String
        {
            attackerSize = temp
        }
        
        if let temp = dictionary["defender_size"] as? String
        {
            defenderSize = temp
        }
        
        if let temp = dictionary["attacker_commander"] as? String
        {
            attackerCommander = temp
        }
        
        if let temp = dictionary["defender_commander"] as? String
        {
            defenderCommander = temp
        }

        if let temp = dictionary["summer"] as? String
        {
            summer = temp
        }
        
        if let temp = dictionary["location"] as? String
        {
            location = temp
        }

        if let temp = dictionary["region"] as? String
        {
            region = temp
        }
        
        if let temp = dictionary["note"] as? String
        {
            note = temp
        }

    }
    
}


