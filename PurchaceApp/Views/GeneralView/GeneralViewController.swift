//
//  GeneralViewController.swift
//  PurchaceApp
//
//  Created by Пащенко Иван on 13.07.2024.
//

import UIKit

class GeneralViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationItem.title = "General"
        
        if let buttonImage = UIImage(systemName: "plus") {
            let addButton = UIBarButtonItem(image: buttonImage, style: .plain, target: self, action: #selector(addPurchase))
            navigationItem.rightBarButtonItem = addButton
        }
        
    }
    
}
