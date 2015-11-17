//
//  Person.swift
//  People persistence
//
//  Created by newww on 11/16/15.
//  Copyright © 2015 CaedenBurch. All rights reserved.
//

import Foundation
import CoreData

class Person: NSManagedObject { //Next to last object in tier pyramid
    @NSManaged var name: String
    @NSManaged var age: Int32
    @NSManaged var gender: String


    //xcdatamodeld is the MOM
}


