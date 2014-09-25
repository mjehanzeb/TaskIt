//
//  Date.swift
//  TaskIt
//
//  Created by KT on 2014-09-19.
//  Copyright (c) 2014 KT. All rights reserved.
//

import Foundation

class Date {

    class func from(#year: Int, month: Int, day: Int) -> NSDate {
        var c = NSDateComponents()
        c.year = year
        c.month = month
        c.day = day
        
        var gregorian = NSCalendar(identifier: NSGregorianCalendar)
        var date = gregorian.dateFromComponents(c)
        
        return date!
    }
    
    class func toString(#date: NSDate) -> String {
        let dateStringFormatter = NSDateFormatter()
        dateStringFormatter.dateFormat = "yyyy-MM-dd"
        let dateString = dateStringFormatter.stringFromDate(date)
        
        return dateString
    }
}
