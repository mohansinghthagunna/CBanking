//
//  EMIModel.swift
//  CBanking
//
//  Created by Developer8 on 8/9/16.
//  Copyright © 2016 CreatuDevelopers. All rights reserved.
//

import UIKit

class EMIModel: NSObject {
  /*  The mathematical formula for calculating EMIs is: EMI = [P x R x (1+R)^N]/[(1+R)^N-1], where P stands for the loan amount or principal, R is the interest rate per month [if the interest rate per annum is 11%, then the rate of interest will be 11/(12 x 100)], and N is the number of monthly instalments.*/
    private
    var _P = Double()
    var _R = Double()
    var _N = Double()
    
    internal
    var p:Double{
        get {
            return _P
        }
        set {
            _P = newValue
        }
    }
    
    var r:Double{
        get {
            return _R
        }
        set {
            _R = newValue
        }
    }
    
    var n:Double{
        get {
            return _N
        }
        set {
            _N = newValue
        }
    }
    
}
