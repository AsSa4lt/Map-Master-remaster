//
//  ountry.swift
//  Map Master
//
//  Created by Rostyslav on 31.01.2023.
//

import Foundation
import CoreData

class Country: NSManagedObject {
    @NSManaged var id: Int16
    @NSManaged var names: [String]
    @NSManaged var flag: Data?
    @NSManaged var emblem: Data?
    @NSManaged var capitalCityName: String
    @NSManaged var region: String
}
