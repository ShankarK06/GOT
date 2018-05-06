//
//  BattleListViewController+Extension.swift
//  TheThrone
//
//  Created by Shankar K on 06/05/18.
//  Copyright © 2018 Shankar. All rights reserved.
//

import UIKit
import Foundation

extension BattleListViewController {
    
    func getUpdatedBattle(battle: [Combact]) {
        DispatchQueue.main.async {
            self.CombactList = battle
            self.battleListTableView.tableFooterView = UIView.init()
            self.battleListTableView.reloadData()
            self.battleListTableView.isHidden = false
        }
    }
    
    
}

extension BattleListViewController: UITableViewDelegate{
    
}

extension BattleListViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (CombactList?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.CustomCellIdentifiers.battleCard, for: indexPath) as! BattleCardTableViewCell
        let combact = CombactList![indexPath.row] 
        cell.kingsFlagAvatar.image = ImageAssetForKing.Image(name: combact.kingsName!)
        cell.kingName.text = (combact.kingsName == "") ? "unknown king" : combact.kingsName
        cell.totalAttack.text = combact.attacksMade
        cell.totalDefence.text = combact.defended
        cell.totalWins.text = combact.totalWins
        cell.totalScore.text = combact.battleScore
        cell.selectionStyle = .none
        return cell
    }
    
}

