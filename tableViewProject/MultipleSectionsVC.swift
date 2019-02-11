//
//  ViewController.swift
//  tableViewProject
//
//  Created by West Kraemer on 2/7/19.
//  Copyright © 2019 West Kraemer. All rights reserved.
//

import UIKit

class MultipleSectionsVC: UIViewController {
    
    var fruit = [["Apple", "Banana", "Pear", "Orange", "Mango", "Cherry", "Grape"], ["Carrot", "Potato", "Squash", "Celery", "Green Beans"], ["Pork", "Chicken", "Beef", "Vegan Nonsense"]]
    
    let headerText = ["Fruits", "Veggies", "Meats"]
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func sortArray(_ sender: UIButton) {
        fruit[0].sort()
        tableView.reloadData()
        
        for indexPath in fruit.indices {
            
            fruit[indexPath] = fruit[indexPath].sorted().reversed()
            
        }
    }
}
    
    extension MultipleSectionsVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return headerText[section]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return fruit.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruit[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = fruit[indexPath.section][indexPath.row]
        return cell
    }
    }

