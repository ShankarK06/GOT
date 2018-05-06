//
//  ThroneInteractor.swift
//  TheThrone
//
//  Created by Shankar K on 06/05/18.
//  Copyright © 2018 Shankar. All rights reserved.
//

import Foundation

final class BattleInteractor : BattleListInteractorProtocol {
    weak var productsPresenter: BattleScreenPresenterProtocol?
    
    func fetchProducts() {
        
        let request = NetworkModel.sharedInstance.getRequest(method: "GET", requestDict: nil, params: Constants.BaseURL.baseURL)

        NetworkModel.sharedInstance.makeRequest(request: request ) { (data, response, error) in
            
            if error == nil
            {
                let resultJson = try JSONSerialization.jsonObject(with: data!, options: []) as? [String:AnyObject]
                print("Result",resultJson!)
//                let Data =
                
            }
        }
    }
}

