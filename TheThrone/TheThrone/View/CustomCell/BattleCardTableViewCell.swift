//
//  BattleCardTableViewCell.swift
//  TheThrone
//
//  Created by Shankar K on 06/05/18.
//  Copyright © 2018 Shankar. All rights reserved.
//

import UIKit

class BattleCardTableViewCell: UITableViewCell {

    @IBOutlet weak var totalAttack: UILabel!
    @IBOutlet weak var totalDefence: UILabel!
    @IBOutlet weak var totalWins: UILabel!
    @IBOutlet weak var totalScore: UILabel!
    @IBOutlet weak var kingName: UILabel!
    @IBOutlet weak var kingsFlagAvatar: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
