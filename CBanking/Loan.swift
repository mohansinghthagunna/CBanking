//
//  Loan.swift
//  CBanking
//
//  Created by Developer8 on 8/9/16.
//  Copyright © 2016 CreatuDevelopers. All rights reserved.
//

import UIKit

class Loan: NSObject {
    private
    var _loan_Id = Int()
    var _bank_Id = Int()
    var _loanType = String()
    var _documents = String()
    var _IR = Double()
    var _process = String()
    var _dateTime = String()
    
    internal
    var loan_Id:Int{
        get{
            return _loan_Id
        }
        set{
            _loan_Id = newValue
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
    
    var loanType:String{
        get{
            return _loanType
        }
        set{
            _loanType = newValue
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
