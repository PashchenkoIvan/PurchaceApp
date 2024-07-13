//
//  REalm.swift
//  PurchaceApp
//
//  Created by Пащенко Иван on 13.07.2024.
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
                
                var input1: String = "Null"
                var input2: Double = 0.0
                
                if firstTextField.text?.count != 0 {
                    input1 = firstTextField.text!
                }
                
                if secondTextField.text?.count != 0 {
                    input2 = Double(secondTextField.text!)!
                }
                
                PurchaseObject.addPurchase(text: input1, cost: input2)
            }
        })

        self.present(alertController, animated: true, completion: nil)
    }
}
