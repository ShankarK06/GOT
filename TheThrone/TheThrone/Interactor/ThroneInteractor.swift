//
//  ThroneInteractor.swift
//  TheThrone
//
//  Created by Shankar K on 06/05/18.
//  Copyright © 2018 Shankar. All rights reserved.
//

import Foundation
import UIKit

struct BattleInteractor {
    
    static func fetchBattle(_ completion: @escaping (_ battle: [Combact]) -> () ) {
        
        let request = NetworkModel.sharedInstance.getRequest(method: "GET", requestDict: nil, params: Constants.BaseURL.baseURL)
        
        NetworkModel.sharedInstance.makeRequest(request: request ) { (data, response, error) in
            
            if error == nil
            {
                let dataX: Data = data!

                if let jsonDataArray = try? JSONSerialization.jsonObject(with: dataX, options: []) as? [[String: Any]] {
                    var battle : [Battle]? = []
                    for battleX in jsonDataArray! {
                        let battleItem = Battle.init(dictionary: battleX)
                        battle?.append(battleItem)
                    }
                    
                    
                    CombactAnalyser.calculateCombact(battle!, { (combact) in
                        completion(combact)
                    })
//                    completion()
                    print(battle)
                }
                
                
//                do {
//                    let json = try? JSONSerialization.jsonObject(with: data, options: []) as? [String:Any]
//                    print("Result",json ?? [])
//                    var battle : [Battle]? = []
//                    for (battleX) in json {
//                    }
//
//                }catch{
//                    print("error in parsing")
//                }
                //                let Data =
                
            }
        }
    }
    
}

