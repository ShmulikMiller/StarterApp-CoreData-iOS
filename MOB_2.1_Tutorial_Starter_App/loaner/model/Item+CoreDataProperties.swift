//
//  Item+CoreDataProperties.swift
//  loaner
//
//  Created by Shmulik Miller on 19.2.20.
//  Copyright © 2020 LinnierGames. All rights reserved.
//
//

import Foundation
import CoreData
import UIKit.UIImage

extension Item {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Item> {
        return NSFetchRequest<Item>(entityName: "Item")
    }

    @NSManaged public var notes: String
    @NSManaged public var itemImage: UIImage
    @NSManaged public var itemTitle: String
    @NSManaged public var loanee: Loanee
   // @NSManaged public var itemDescription: String
   // @NSManaged public var quantity: Int16
   // @NSManaged public var createdAt: Date
   // @NSManaged public var collateral: Collateral

}
