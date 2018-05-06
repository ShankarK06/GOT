//
//  CombactAnalyser.swift
//  TheThrone
//
//  Created by Shankar K on 06/05/18.
//  Copyright © 2018 Shankar. All rights reserved.
//

import Foundation
import UIKit

struct CombactAnalyser {
    
    static func calculateCombact(_ battle: [Battle] , _ completion: @escaping (_ battle: [Combact]) -> () )  {
        var combacts : [Combact]? = []
        let KConstant : Float = 32.0
        
        for battleItem in battle {
            
            let attackerKing = battleItem.attackerKing
            let defenderKing = battleItem.defenderKing
            var combactKing1 = Combact.init()
            var combactKing2 = Combact.init()
            
            if let combactItem = combacts?.filter({$0.kingsName == attackerKing}) , combactItem.count > 0 {
                combactKing1 = combactItem[0]
                combacts = combacts?.filter({$0.kingsName != attackerKing})
            }else{
                combactKing1.kingsName = attackerKing
            }
            
            if let combactItem = combacts?.filter({$0.kingsName == defenderKing}) , combactItem.count > 0 {
                combactKing2 = combactItem[0]
                combacts = combacts?.filter({$0.kingsName != defenderKing})
            }else{
                combactKing2.kingsName = defenderKing
            }

            
            var comKing1Score : Float = 400
            var comKing2Score : Float = 400

            if combactKing1.battleScore != ""
            {
                comKing1Score = (combactKing1.battleScore?.floatValue)!
            }
            
            if combactKing2.battleScore != ""
            {
                comKing2Score = (combactKing2.battleScore?.floatValue)!
            }
            
            //Step : 1
            let R1 = powf(10, ( comKing1Score / 400 ))
            let R2 = powf(10, ( comKing2Score / 400 ))
            
            //Step : 2
            let E1 = R1 / ( R1 + R2 )
            let E2 = R2 / ( R1 + R2 )
            
            //Step: 3
            var S1 : Float = 0.5
            var S2 : Float = 0.5
            
            if battleItem.attackerOutcome != "draw"{
                if battleItem.attackerOutcome == "win"{
                    S1 = 1
                    S2 = 0
                }else{
                    S1 = 0
                    S2 = 1
                }
            }
            
            // total Win
            if S1 == 1 {
                if combactKing1.totalWin != "0"
                {
                    combactKing1.totalWin = String.init(format: "%d", (Int(combactKing1.totalWin!)! + 1))
                }else
                {
                    combactKing1.totalWin = "1"
                }
            }else{
                if combactKing2.totalWin != "0"
                {
                    combactKing2.totalWin = String.init(format: "%d", (Int(combactKing2.totalWin!)! + 1))
                }else
                {
                    combactKing2.totalWin = "1"
                }
                
                if combactKing2.totalWin != "0"
                {
                    combactKing2.totalWin = String.init(format: "%d", (Int(combactKing2.totalWin!)! + 1))
                }else
                {
                    combactKing2.totalWin = "1"
                }
            }
            
            //step: 4
            comKing1Score = comKing1Score + ( KConstant * ( S1 - E1 ) )
            comKing2Score = comKing2Score + ( KConstant * ( S2 - E2 ) )

            combactKing1.battleScore = String.init(format: "%.2f", comKing1Score)
            combactKing2.battleScore = String.init(format: "%.2f", comKing2Score)
            
            if combactKing1.wars! != []
            {
                var wars = combactKing1.wars
                wars?.append(battleItem.name!)
                combactKing1.wars = wars
            }else{
                combactKing1.wars?.append(battleItem.name!)
            }
            if combactKing2.wars! != []{
                var wars = combactKing2.wars
                wars?.append(battleItem.name!)
                combactKing2.wars = wars
            }else{
                combactKing2.wars?.append(battleItem.name!)
            }
            //total Attacks
            if combactKing1.attacksMade != "0"
            {
                combactKing1.attacksMade = String.init(format: "%d", (Int(combactKing1.attacksMade!)! + 1))
            }else
            {
                combactKing1.attacksMade = "1"
            }
            //Attacks Won
            if combactKing1.AttacksWon != "0"
            {
                combactKing1.AttacksWon = String.init(format: "%d", (Int(combactKing1.AttacksWon!)! + 1))
            }else
            {
                combactKing1.AttacksWon = "1"
            }
            //total defended
            if combactKing2.defended != "0"
            {
                combactKing2.defended = String.init(format: "%d", (Int(combactKing2.defended!)! + 1))
            }else
            {
                combactKing2.defended = "1"
            }
            
            if combactKing2.defendedSuccess != "0"
            {
                combactKing2.defendedSuccess = String.init(format: "%d", (Int(combactKing2.defendedSuccess!)! + 1))
            }else
            {
                combactKing2.defendedSuccess = "1"
            }

            combacts?.append(combactKing1)
            combacts?.append(combactKing2)
            
        }
        completion(combacts!)
    }
}

extension String {
    var floatValue: Float {
        return (self as NSString).floatValue
    }
}
