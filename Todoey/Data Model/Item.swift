//
//  Item.swift
//  Todoey
//
//  Created by Yusuke Mori on 2022/11/11.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation
import RealmSwift


class Item: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var done: Bool = false
    @objc dynamic var dateCreated: Date?
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
