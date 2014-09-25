//
//  AddTaskViewController.swift
//  TaskIt
//
//  Created by KT on 2014-09-22.
//  Copyright (c) 2014 KT. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class AddTaskViewController: UIViewController {
    
    @IBOutlet weak var taskTextField: UITextField!
    @IBOutlet weak var subTaskTextField: UITextField!
    @IBOutlet weak var dueDatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func cancelButtonTapped(sender: UIButton) {
        self.dismissViewControllerAnimated(false, completion: nil)
    }

    @IBAction func addTaskButtonTapped(sender: UIButton) {
        
        var appDelegate = (UIApplication.sharedApplication().delegate as AppDelegate)
        
        let manageObjectContext = appDelegate.managedObjectContext
        let entityDescription = NSEntityDescription.entityForName("TaskModel", inManagedObjectContext: manageObjectContext!)
        let task = TaskModel(entity: entityDescription!, insertIntoManagedObjectContext: manageObjectContext)
        task.task = taskTextField.text
        task.subtask = subTaskTextField.text
        task.date = dueDatePicker.date
        task.completed = false
        
        appDelegate.saveContext()
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}