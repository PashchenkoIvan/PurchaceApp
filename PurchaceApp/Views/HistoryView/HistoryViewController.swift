//
//  ViewController.swift
//  PurchaceApp
//
//  Created by Пащенко Иван on 12.07.2024.
//

import UIKit

class HistoryViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "History"
    }
}
