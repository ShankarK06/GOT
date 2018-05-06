//
//  ThroneProtocol.swift
//  TheThrone
//
//  Created by Shankar K on 06/05/18.
//  Copyright © 2018 Shankar. All rights reserved.
//

import Foundation

protocol BattleListInteractorProtocol: class {
    func fetchBattle()
}
protocol BattleScreenPresenterProtocol: class {
    func fetchBattles()
//    func getProducts(products: [ProductSectionItems])
}
