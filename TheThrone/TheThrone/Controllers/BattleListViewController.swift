//
//  ViewController.swift
//  TheThrone
//
//  Created by Shankar K on 06/05/18.
//  Copyright © 2018 Shankar. All rights reserved.
//

import UIKit

class BattleListViewController: UIViewController {
    var presenter: BattleScreenPresenterProtocol?

    @IBOutlet weak var battleListTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        battleListTableView.register(UINib.init(nibName: Constants.TableViewCellIdentifiers.battleCellIdentifier, bundle: nil), forCellReuseIdentifier: Constants.CustomCellIdentifiers.battleCard)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        presenter?.fetchBattles()
    }
    
}

extension BattleListViewController: UITableViewDelegate{
    
}

extension BattleListViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.CustomCellIdentifiers.battleCard, for: indexPath)
        
        return cell
    }
    
}

