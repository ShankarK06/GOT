//
//  ViewController.swift
//  TheThrone
//
//  Created by Shankar K on 06/05/18.
//  Copyright © 2018 Shankar. All rights reserved.
//

import UIKit

class BattleListViewController: UIViewController {
    
    @IBOutlet weak var battleListTableView: UITableView!
    var battleList: [Battle]? = []
    var CombactList: [Combact]? = []

    override func viewDidLoad() {
        super.viewDidLoad()
        self.battleListTableView.isHidden = true
        battleListTableView.register(UINib.init(nibName: Constants.TableViewCellIdentifiers.battleCellIdentifier, bundle: nil), forCellReuseIdentifier: Constants.CustomCellIdentifiers.battleCard)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        BattleInteractor.fetchBattle { (battleData) in
            self.getUpdatedBattle(battle : battleData)
        }
    }
    
}


