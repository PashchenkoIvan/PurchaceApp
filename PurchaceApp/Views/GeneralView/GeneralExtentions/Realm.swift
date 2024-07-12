//
//  Realm.swift
//  PurchaceApp
//
//  Created by Пащенко Иван on 12.07.2024.
//

import Foundation
import UIKit

extension GeneralViewController {
    @objc func addPurchase() {
        let alertController = UIAlertController(title: "Enter the purchase data", message: nil, preferredStyle: .alert)

        alertController.addTextField { textField in
            textField.placeholder = "Enter the product"
        }

        alertController.addTextField { textField in
            textField.placeholder = "Enter the cost"
            textField.keyboardType = .decimalPad
        }

        alertController.addAction(UIAlertAction(title: "OK", style: .default) { action in
            if let firstTextField = alertController.textFields?.first,
               let secondTextField = alertController.textFields?.last {
                
                let input1 = firstTextField.text ?? ""
                let input2 = Double(secondTextField.text ?? "") ?? 0.0
                
                PurchaseObject.addPurchase(text: input1, cost: input2)
                self.tableView.reloadData()
            }
        })

        self.present(alertController, animated: true, completion: nil)
    }
}
