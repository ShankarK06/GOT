//
//  ImageAssest.swift
//  TheThrone
//
//  Created by Shankar K on 06/05/18.
//  Copyright © 2018 Shankar. All rights reserved.
//

import Foundation
import UIKit

struct ImageAssetForKing {
    
    static func Image(name: String) -> UIImage
    {
        print(name)
       let nameOfKing = self.nameOfKing(name: name)
        switch nameOfKing {
        case "Stark":
            return Constants.ImageAssest.kingStark!
            
        case "Lannister":
            return Constants.ImageAssest.kingLannister!
            
        case "Greyjoy":
            return Constants.ImageAssest.kingLannister!

        case "Mance":
            return Constants.ImageAssest.kingMance!
            
        case "Renly":
            return Constants.ImageAssest.kingRenly!
            
        case "Stannis":
            return Constants.ImageAssest.kingStannis!
            
        case "Tully":
            return Constants.ImageAssest.kingTully!

        default:
            return Constants.ImageAssest.kingTully!
            
        }
    }
    
    static func nameOfKing(name: String) -> String{
        
        if name.contains("Stark"){
            return "Stark"
        }
        if name.contains("Lannister"){
            return "Lannister"
        }
        if name.contains("Greyjoy"){
            return "Greyjoy"
        }
        if name.contains("Mance"){
            return "Mance"
        }
        if name.contains("Renly"){
            return "Renly"
        }
        if name.contains("Stannis"){
            return "Stannis"
        }
        if name.contains("Tully"){
            return "Tully"
        }
        return "Stark"
    }
}
