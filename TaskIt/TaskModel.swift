//
//  TaskModel.swift
//  TaskIt
//
//  Created by KT on 2014-09-22.
//  Copyright (c) 2014 KT. All rights reserved.
//

import Foundation
import CoreData

@objc(TaskModel)
class TaskModel: NSManagedObject {

    @NSManaged var completed: NSNumber
    @NSManaged var date: NSDate
    @NSManaged var task: String
    @NSManaged var subtask: String

}
