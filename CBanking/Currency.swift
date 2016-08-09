//
//  Currency.swift
//  CBanking
//
//  Created by Developer8 on 8/9/16.
//  Copyright © 2016 CreatuDevelopers. All rights reserved.
//

import UIKit

class Currency: NSObject {
    private
    var _currency_Id = Int()
    var _currencyName = String()
    var _flagURL = String()
    var _notation = String()
    var _name = String()
    var _rate = Double()
    var _IsAppear = Bool()
    var _dateTime = String()
    
    internal
    var currency_Id:Int{
        get{
            return _currency_Id
        }
        set{
            _currency_Id = newValue
        }
    }
    
    var currencyName:String{
        get{
            return _currencyName
        }
        set{
            _currencyName = newValue
        }
    }
    
    var flagURL:String{
        get{
            return _flagURL
        }
        set{
            _flagURL = newValue
        }
    }
    
    var notation:String{
        get{
            return _notation
        }
        set{
            _notation = newValue
        }
    }
    
    var name:String{
        get{
            return _name
        }
        set{
            _name = newValue
        }
    }
    
    var rate:Double{
        get{
            return _rate
        }
        set{
            _rate = newValue
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
