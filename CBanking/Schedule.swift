//
//  Schedule.swift
//  CBanking
//
//  Created by Developer8 on 8/9/16.
//  Copyright © 2016 CreatuDevelopers. All rights reserved.
//

import UIKit

class Schedule: NSObject {
    private
    var _schedule_Id = Int()
    var _branch_Id = Int()
    var _weekday = Int()
    var _openingHour = String()
    var _closingHour = String()
    var _dateTime = String()
    
    internal
    var schedule_Id:Int{
        get{
            return _schedule_Id
        }
        set{
            _schedule_Id = newValue
        }
    }
    
    var branch_Id:Int{
        get{
            return _branch_Id
        }
        set{
            _branch_Id = newValue
        }
    }
    
    var weekday:Int{
        get{
            return _weekday
        }
        set{
            _weekday = newValue
        }
    }
    
    var openingHour:String{
        get{
            return _openingHour
        }
        set{
            _openingHour = newValue
        }
    }
    
    var closingHour:String{
        get{
            return _closingHour
        }
        set{
            _closingHour = newValue
        }
    }
    
    var dateTime:String{
        get{
            return _dateTime
        }
        set{
            _dateTime = newValue
        }
    }
}
