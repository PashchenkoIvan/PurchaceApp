//
//  ViewController.swift
//  PurchaceApp
//
//  Created by Пащенко Иван on 12.07.2024.
//

import UIKit

class GeneralViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "General"
        
        if let buttonImage = UIImage(systemName: "plus") {
            let addButton = UIBarButtonItem(image: buttonImage, style: .plain, target: self, action: #selector(addPurchase))
            navigationItem.rightBarButtonItem = addButton
        }
        
        
    }
}
