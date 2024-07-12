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
        
        
    }
}

extension GeneralViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return PurchaseObject.getAllPurchases().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        let purchases = PurchaseObject.getAllPurchases()
        cell.textLabel?.text = purchases[indexPath.count].text
        
        return cell
    }
}

