//
//  UserWeights.swift
//  OnPoint Workouts
//
//  Created by Bret Boyer on 4/19/17.
//  Copyright © 2017 OnPoint Workouts. All rights reserved.
//

import UIKit
import CoreData

@objc(UserWeight)
class UserWeight: NSManagedObject {
    
    @NSManaged var weight: String
    @NSManaged var date: String
    @NSManaged var units: String
    
}
