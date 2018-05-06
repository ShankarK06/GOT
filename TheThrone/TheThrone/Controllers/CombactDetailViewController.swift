//
//  CombactDetailViewController.swift
//  TheThrone
//
//  Created by Shankar K on 06/05/18.
//  Copyright © 2018 Shankar. All rights reserved.
//

import UIKit

class CombactDetailViewController: UIViewController {

    @IBOutlet weak var kingAvatar: UIImageView!
    @IBOutlet weak var combatTabelView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        combatTabelView.register(UINib.init(nibName: Constants.TableViewCellIdentifiers.battleCellIdentifier, bundle: nil), forCellReuseIdentifier: Constants.CustomCellIdentifiers.battleCard)
    }
    
    func updateKingAvatar(_ image: UIImage) {
        self.kingAvatar.image = image
    }

}

extension CombactDetailViewController: UITableViewDelegate
{
    
}

extension CombactDetailViewController: UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.CustomCellIdentifiers.battleCard, for: indexPath)
        
        return cell
    }

}
