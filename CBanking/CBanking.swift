//
//  CBanking.swift
//  CBanking
//
//  Created by Mohan Singh Thagunna on 7/31/16.
//  Copyright © 2016 CreatuDevelopers. All rights reserved.
//

import UIKit

class CBanking: NSObject {
    //MARK: Shared Instance make Unique Object
    class var sharedInstance: CBanking {
        struct Static {
            static var onceToken: dispatch_once_t = 0
            static var instance: CBanking? = nil
        }
        dispatch_once(&Static.onceToken) {
            Static.instance = CBanking()
        }
        return Static.instance!
    }
    
    //MARK: --Temp Variable Decalration
    private
    var _menuSelect:Int = 0
    var _isMenuSelectionChanged = false
    var _bankData:[Banks] = []
     var _branchData:[Branch] = []
     var _curencyData:[Currency] = []
     var _depositeData:[Deposite] = []
     var _loanData:[Loan] = []
     var _newsData:[News] = []
     var _scheduleData:[Schedule] = []
    
    //MARK:setter getter method
    internal
    var menuSelect: Int {
        get {
            
            return _menuSelect
        }
        set {
            _menuSelect = newValue
        }
    }
    
    var isMenuSelectionChanged: Bool {
        get {
            
            return _isMenuSelectionChanged
        }
        set {
            _isMenuSelectionChanged = newValue
        }
    }
    
    var bankData: [Banks] {
        get {
            
            return _bankData
        }
        set {
            _bankData = newValue
        }
    }
    
    var branchData: [Branch] {
        get {
            
            return _branchData
        }
        set {
            _branchData = newValue
        }
    }
    var curencyData: [Currency] {
        get {
            
            return _curencyData
        }
        set {
            _curencyData = newValue
        }
    }

    var depositeData: [Deposite] {
        get {
            
            return _depositeData
        }
        set {
            _depositeData = newValue
        }
    }
    var loanData: [Loan] {
        get {
            
            return _loanData
        }
        set {
            _loanData = newValue
        }
    }
    var newsData: [News] {
        get {
            
            return _newsData
        }
        set {
            _newsData = newValue
        }
    }
    var scheduleData: [Schedule] {
        get {
            
            return _scheduleData
        }
        set {
            _scheduleData = newValue
        }
    }
}
