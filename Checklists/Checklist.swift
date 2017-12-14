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
    var iconName: String
    var items = [ChecklistItem]()

    init(name: String, iconName: String) {
        self.name = name
        self.iconName = iconName

        super.init()
    }

    convenience init(name: String) {
        self.init(name: name, iconName: "No Icon")
    }

    required init?(coder aDecoder: NSCoder) {
        name = aDecoder.decodeObject(forKey: "Name") as! String
        iconName = aDecoder.decodeObject(forKey: "IconName") as! String
        items = aDecoder.decodeObject(forKey: "Items") as! [ChecklistItem]
    }

    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: "Name")
        aCoder.encode(iconName, forKey: "IconName")
        aCoder.encode(items, forKey: "Items")
    }

    func countUncheckedItems() -> Int {
        var count = 0
        for item in items where !item.checked {
            count += 1
        }

        return count
    }

}
