//
//  CombactDetailViewController+Extension.swift
//  TheThrone
//
//  Created by Shankar K on 06/05/18.
//  Copyright © 2018 Shankar. All rights reserved.
//

import Foundation
import UIKit

extension CombactDetailViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView.init(frame: CGRect.init(x: 0 , y: 0, width: UIScreen.main.bounds.width, height: 50))
        let label = UILabel.init(frame: CGRect.init(x: 15, y: 0, width: UIScreen.main.bounds.width, height: 50))
        if section == 1{
            label.text = " Wars"
            label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
            label.textColor = .white
            view.backgroundColor = .darkGray
        }
        view.addSubview(label)
        return view
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
}

extension CombactDetailViewController: UITableViewDataSource
{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 1
        {
            return (combact?.wars?.count)!
        }
        return (detailDictionary.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.CustomCellIdentifiers.CombactCell, for: indexPath) as! DetailTableViewCell
        if indexPath.section == 1{
            cell.detailText?.text = combact?.wars![indexPath.row]
            cell.valueText.text = ""
        }else{
            cell.detailText?.text = keysArray![indexPath.row] as? String
            cell.valueText.text = valuesArray![indexPath.row] as? String
        }
        return cell
    }
    
}

