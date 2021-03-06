//
//  ThronePresenter.swift
//  TheThrone
//
//  Created by Shankar K on 06/05/18.
//  Copyright © 2018 Shankar. All rights reserved.
//

import Foundation

final class BattleScreenPresenter: BattleScreenPresenterProtocol{
    
    var interactor: BattleListInteractorProtocol?
    weak var BattleListView: BattleListInteractorProtocol?
    
//    init(view: BattleListInteractorProtocol) {
//        BattleListView?.fetchBattle()
//    }
    func fetchBattles() {
        BattleListView?.fetchBattle()
    }
    
    
}
