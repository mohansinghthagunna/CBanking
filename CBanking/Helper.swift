//
//  Helper.swift
//  Waste Info Swift
//
//  Created by Developer8 on 6/9/16.
//  Copyright © 2016 Mohan. All rights reserved.
//

import UIKit

let AppName:String = "Creatu Banking"

class Helper: NSObject {

    func parseJsonData(json:[String:AnyObject]){
        
       CBanking.sharedInstance.bankData = bankParse(json["Bank"] as! [AnyObject])
       CBanking.sharedInstance.branchData = branchParse(json["Branch"] as! [AnyObject])
       CBanking.sharedInstance.curencyData = currencyParse(json["Currency"] as! [AnyObject])
       CBanking.sharedInstance.depositeData = depositeParse(json["Deposite"] as! [AnyObject])
       CBanking.sharedInstance.loanData = loanParse(json["Loan"] as! [AnyObject])
       CBanking.sharedInstance.newsData = NewsParse(json["News"] as! [AnyObject])
       CBanking.sharedInstance.scheduleData = scheduleParse(json["Schedule"] as! [AnyObject])
    //   CBanking.sharedInstance.bankData = atmParse(json["Atm"] as! [AnyObject])
    //   CBanking.sharedInstance.bankData = atm_scheduleParse(json["Atm_Schedule"] as! [AnyObject])
      
    }
    
    func bankParse(json:[AnyObject]) ->[Banks]{
        var objList:[Banks] = []
        
        for Item in json {
             let obj = Banks()
            obj.bank_id = Item["Bank_id"] as! Int
            obj.bankName = Item["BankName"] as! String
            obj.logoURL = Item["LogoURL"] as! String
            obj.bankClass = Item["Class"] as! String
            obj.IsAppear = Item["IsAppear"] as! Bool
            obj.dateTime = Item["DateTime"] as! String
             objList += [obj]
        }
        return objList
    }
    
    func branchParse(json:[AnyObject]) -> [Branch]{
         var objList:[Branch] = []
        
        for Item in json {
             let obj = Branch()
            obj.bank_id = Item["Branch_id"] as! Int
            obj.bank_id = Item["Bank_id"] as! Int
            obj.address = Item["Address"] as! String
            obj.branchType = Item["BranchType"] as! String
            obj.lat = Item["Latitude"] as! Double
            obj.lng = Item["Longitude"] as! Double
            obj.IsAppear = Item["IsAppear"] as! Bool
            obj.dateTime = Item["DateTime"] as! String
             objList += [obj]
        }
 return objList
    }
    
    func currencyParse(json:[AnyObject]) -> [Currency]{
        var objList:[Currency] = []
        
        for Item in json {
             let obj = Currency()
            obj.currency_Id = Item["Currency_id"] as! Int
            obj.currencyName = Item["CountryName"] as! String
            obj.flagURL = Item["FlagUrl"] as! String
            obj.notation = Item["Notation"] as! String
            obj.name = Item["Name"] as! String
            obj.rate = Item["Rate"] as! Double
            obj.dateTime = Item["DateTime"] as! String
             objList += [obj]
            
        }
         return objList
    }
    
    func depositeParse(json:[AnyObject]) -> [Deposite]{
        var objList:[Deposite] = []
        
        for Item in json {
             let obj = Deposite()
            obj.deposite_Id = Item["Deposite_id"] as! Int
            obj.bank_id = Item["Bank_id"] as! Int
            obj.depositeType = Item["DepositeType"] as! String
            obj.iR = Item["IR"] as! Double
            obj.documents = Item["Documents"] as! String
            obj.process = Item["Process"] as! String
            obj.dateTime = Item["DateTime"] as! String
             objList += [obj]
        }
 return objList
    }
    
    func feedbackParse(json:[AnyObject]){
        
    }
    
    func loanParse(json:[AnyObject]) -> [Loan]{
         var objList:[Loan] = []
               for Item in json {
                let obj = Loan()
            obj.loan_Id = Item["Loan_id"] as! Int
            obj.bank_id = Item["Bank_id"] as! Int
            obj.loanType = Item["LoanType"] as! String
            obj.iR = Item["IR"] as! Double
            obj.documents = Item["Documents"] as! String
            obj.process = Item["Process"] as! String
            obj.dateTime = Item["DateTime"] as! String
                 objList += [obj]
        }
         return objList
    }
    
    func NewsParse(json:[AnyObject]) -> [News]{
        var objList:[News] = []
        
        for Item in json {
             let obj = News()
            obj.news_Id = Item["News_id"] as! Int
            obj.bank_id = Item["Bank_id"] as! Int
            obj.topic = Item["Topic"] as! String
            obj.details = Item["Details"] as! String
            obj.dateTime = Item["DateTime"] as! String
             objList += [obj]
        }
         return objList
    }
    
    func scheduleParse(json:[AnyObject])->[Schedule]{
        var objList:[Schedule] = []
        for Item in json {
            let obj = Schedule()
            obj.schedule_Id = Item["Schedule_id"] as! Int
            obj.branch_Id = Item["Branch_id"] as! Int
            obj.weekday = Item["Weekday"] as! Int
            obj.openingHour = Item["OpeningHour"] as! String
            obj.closingHour = Item["ClosingHour"] as! String
            obj.dateTime = Item["DateTime"] as! String
            objList += [obj]
        }
        return objList
    }
    
    func atmParse(json:[AnyObject]){
        
    }
    func atm_scheduleParse(json:[AnyObject]){
        
    }
    
}
