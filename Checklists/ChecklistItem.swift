//
//  ChecklistItem.swift
//  Checklists
//
//  Created by Marcel Kraus on 11.08.17.
//  Copyright © 2017 Marcel Kraus. All rights reserved.
//

import Foundation

class ChecklistItem {
    var text = ""
    var checked = false

    func toggleChecked() {
        checked = !checked
    }
}
