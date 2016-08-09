//
//  Deposite.swift
//  CBanking
//
//  Created by Developer8 on 8/9/16.
//  Copyright © 2016 CreatuDevelopers. All rights reserved.
//

import UIKit

class Deposite: NSObject {
    private
    var _deposite_Id = Int()
    var _bank_Id = Int()
    var _depositeType = String()
    var _documents = String()
    var _IR = Double()
    var _process = String()
    var _dateTime = String()
    
    internal
    var deposite_Id:Int{
        get{
            return _deposite_Id
        }
        set{
            _deposite_Id = newValue
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
    
    var depositeType:String{
        get{
            return _depositeType
        }
        set{
            _depositeType = newValue
        }
    }
    
    var documents:String{
        get{
            return _documents
        }
        set{
            _documents = newValue
        }
    }
    
    var iR:Double{
        get{
            return _IR
        }
        set{
            _IR = newValue
        }
    }
    
    var process:String{
        get{
            return _process
        }
        set{
            _process = newValue
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
