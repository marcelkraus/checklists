//
//  ViewController.swift
//  Checklists
//
//  Created by Marcel Kraus on 23.07.17.
//  Copyright © 2017 Marcel Kraus. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        let label = cell.viewWithTag(1000) as! UILabel
        
        switch true {
        case indexPath.row % 5 == 0:
            label.text = "Walk the dog"
        case indexPath.row % 5 == 1:
            label.text = "Brush my teeth"
        case indexPath.row % 5 == 2:
            label.text = "Learn iOS development"
        case indexPath.row % 5 == 3:
            label.text = "Soccer practise"
        case indexPath.row % 5 == 4:
            label.text = "Eat ice cream"
        default:
            label.text = "Set up this project"
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            if cell.accessoryType == .none {
                cell.accessoryType = .checkmark
            } else {
                cell.accessoryType = .none
            }
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }

}

