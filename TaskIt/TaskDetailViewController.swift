//
//  TaskDetailViewController.swift
//  TaskIt
//
//  Created by KT on 2014-09-19.
//  Copyright (c) 2014 KT. All rights reserved.
//

import Foundation
import UIKit

class TaskDetailViewController: UIViewController {

    var mainVC: ViewController!

    var detailTaskModel: TaskModel!
    
    
    @IBOutlet weak var taskTextField: UITextField!
    @IBOutlet weak var subTaskTextField: UITextField!
    @IBOutlet weak var dueDatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        taskTextField.text = self.detailTaskModel.task
        subTaskTextField.text = self.detailTaskModel.subtask
        dueDatePicker.date = self.detailTaskModel.date
    }

    @IBAction func cancelButtonTapped(sender: UIBarButtonItem) {
        self.navigationController?.popViewControllerAnimated(true)
    }

    @IBAction func doneButtonTapped(sender: UIBarButtonItem) {

        let appDelegate = (UIApplication.sharedApplication().delegate as AppDelegate)
        
        detailTaskModel.task = taskTextField.text
        detailTaskModel.subtask = subTaskTextField.text
        detailTaskModel.date = dueDatePicker.date
        detailTaskModel.completed = detailTaskModel.completed
        appDelegate.saveContext()
        
        self.navigationController?.popViewControllerAnimated(true)
    }
}