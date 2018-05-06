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
    var combact : Combact?
    var detailDictionary : [String: Any] = [:]
    var kingFlag : UIImage?
    var keysArray: Array<Any>?
    var valuesArray: Array<Any>?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.kingAvatar.image = self.kingFlag
        self.detailDictionary.updateValue(self.combact?.attacksMade ?? 0, forKey: "Attacks Made")
        self.detailDictionary.updateValue(self.combact?.defended ?? 0, forKey: "Defended")
        self.detailDictionary.updateValue(self.combact?.AttacksWon ?? 0, forKey: "Attacks won")
        self.detailDictionary.updateValue(self.combact?.attacksMade ?? 0, forKey: "Total Wins")
        self.detailDictionary.updateValue(self.combact?.defendedSuccess ?? 0, forKey: "Defended Successfully")
        self.keysArray = Array(detailDictionary.keys)
        self.valuesArray = Array(detailDictionary.values)
        combatTabelView.register(UINib.init(nibName: Constants.TableViewCellIdentifiers.combactCellIdentifier, bundle: nil), forCellReuseIdentifier: Constants.CustomCellIdentifiers.CombactCell)

    }

}

