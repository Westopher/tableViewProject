//
//  ViewController.swift
//  tableViewProject
//
//  Created by West Kraemer on 2/7/19.
//  Copyright © 2019 West Kraemer. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    let fruit = ["Apple", "Banana", "Pear", "Orange", "Mango", "Cherry", "Grape"]
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = fruit[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruit.count
    }
    
   
    



}

