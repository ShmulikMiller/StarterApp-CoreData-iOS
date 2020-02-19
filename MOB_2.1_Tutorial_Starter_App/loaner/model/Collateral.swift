//
//  Collateral.swift
//  loaner
//
//  Created by Shmulik Miller on 19.2.20.
//  Copyright © 2020 LinnierGames. All rights reserved.
//

import UIKit

public class Collateral: NSObject, NSCoding {

    var name: String
    var estimatedPrice: Double?

    // Protocol requires having Keys for our variables
    enum Keys: String {
        case name = "name"
        case estimatedPrice = "estimatedPrice"
    }

    init(name: String, estimatedPrice: Double?) {

        /** For Future Feature: Ability to access Contacts app:
         init(name: String, profileImage: UIImage, contactNumber: String?) {

         self.profileImage = profileImage
         **/

        self.name = name
        self.estimatedPrice = estimatedPrice
    }

    // Protocol requires an encode method to encode our variables based on the Key
    public func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: "name")
        aCoder.encode(estimatedPrice, forKey: "estimatedPrice")
    }

    // Protocol requires an init method which acts as a decoder for our variables based on the Key
    required public init?(coder aDecoder: NSCoder) {
        name = aDecoder.decodeObject(forKey: "name") as! String
        estimatedPrice = aDecoder.decodeObject(forKey: "estimatedPrice") as? Double
        super.init()
    }
}
