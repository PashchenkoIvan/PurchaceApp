//
//  TableView.swift
//  PurchaceApp
//
//  Created by Пащенко Иван on 12.07.2024.
//

import Foundation
import UIKit

extension HistoryViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return PurchaseObject.getAllPurchases().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        let purchases = PurchaseObject.getAllPurchases()
        
        // Check if the index is within bounds
        if indexPath.row < purchases.count {
            cell.textLabel?.text = purchases[indexPath.row].text
        } else {
            cell.textLabel?.text = "Invalid index"
        }
        
        return cell
    }
    
}

extension HistoryViewController: UITableViewDelegate {
    @available(iOS 11.0, *)
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: nil) { (_, _, completionHandler) in
            let purchaseArray = PurchaseObject.getAllPurchases()
            
            PurchaseObject.deletePurchase(withId: purchaseArray[indexPath.row].id)
            self.tableView.reloadData()
            
            completionHandler(true)
        }
        deleteAction.image = UIImage(systemName: "trash.fill")
        
        let configuration = UISwipeActionsConfiguration(actions: [deleteAction])
        return configuration
    }
}

