//
//  Branch.swift
//  CBanking
//
//  Created by Developer8 on 8/9/16.
//  Copyright © 2016 CreatuDevelopers. All rights reserved.
//

import UIKit

class Branch: NSObject {
    private
    var _branch_Id = Int()
    var _bank_Id = Int()
    var _address = String()
    var _branchType = String()
    var _lat = Double()
    var _lng = Double()
    var _IsAppear = Bool()
    var _dateTime = String()
    
    internal
    var branch_Id:Int{
        get{
            return _branch_Id
        }
        set{
            _branch_Id = newValue
        }
    }
    
    var bank_id:Int{
        get{
            return _bank_Id
        }
        set{
            _bank_Id = newValue
        }
    }
    
    var address:String{
        get{
            return _address
        }
        set{
            _address = newValue
        }
    }
    
    var branchType:String{
        get{
            return _branchType
        }
        set{
            _branchType = newValue
        }
    }
    
    var lat:Double{
        get{
            return _lat
        }
        set{
            _lat = newValue
        }
    }
    
    var lng:Double{
        get{
            return _lng
        }
        set{
            _lng = newValue
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
    
    var IsAppear:Bool{
        get{
            return _IsAppear
        }
        set{
            _IsAppear = newValue
        }
    }
}
