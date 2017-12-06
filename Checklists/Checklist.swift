//
//  Checklist.swift
//  Checklists
//
//  Created by Marcel Kraus on 06.12.17.
//  Copyright © 2017 Marcel Kraus. All rights reserved.
//

import UIKit

class Checklist: NSObject, NSCoding {

    var name: String
    var items = [ChecklistItem]()

    init(name: String) {
        self.name = name

        super.init()
    }

    required init?(coder aDecoder: NSCoder) {
        name = aDecoder.decodeObject(forKey: "Name") as! String
        items = aDecoder.decodeObject(forKey: "Items") as! [ChecklistItem]
    }

    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: "Name")
        aCoder.encode(items, forKey: "Items")
    }

}
