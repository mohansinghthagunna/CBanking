//
//  Banks.swift
//  CBanking
//
//  Created by Mohan Singh Thagunna on 8/10/16.
//  Copyright © 2016 CreatuDevelopers. All rights reserved.
//

import UIKit

class Banks: NSObject {
//    obj.bank_id = Item["Bank_id"] as! Int
//    obj.bankName = Item["BankName"] as! String
//    obj.logoURL = Item["LogoURL"] as! String
//    obj.bankClass = Item["Class"] as! String
//    obj.IsAppear = Item["IsAppear"] as! Bool
//    obj.dateTime = Item["DateTime"] as! String

    private
    var _bank_Id = Int()
    var _bankName = String()
    var _logoURL = String()
   var _bankClass  = String()
    var _IsAppear = Bool()
    var _dateTime = String()
    
    internal
    var bank_id:Int{
        get{
            return _bank_Id
        }
        set{
            _bank_Id = newValue
        }
    }
    
    var bankName:String{
        get{
            return _bankName
        }
        set{
            _bankName = newValue
        }
    }
    
    var logoURL:String{
        get{
            return _logoURL
        }
        set{
            _logoURL = newValue
        }
    }
    var bankClass:String{
        get{
            return _bankClass
        }
        set{
            _bankClass = newValue
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
