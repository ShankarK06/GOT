//
//  CombactDetailViewController+Extension.swift
//  TheThrone
//
//  Created by Shankar K on 06/05/18.
//  Copyright © 2018 Shankar. All rights reserved.
//

import Foundation
import UIKit

extension CombactDetailViewController: UITableViewDataSource
{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (detailDictionary.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.CustomCellIdentifiers.CombactCell, for: indexPath) as! DetailTableViewCell
        
        cell.detailText?.text = keysArray![indexPath.row] as? String
        cell.valueText.text = valuesArray![indexPath.row] as? String
        return cell
    }
    
}

