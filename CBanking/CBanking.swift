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
}
