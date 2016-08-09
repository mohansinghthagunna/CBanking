//
//  News.swift
//  CBanking
//
//  Created by Developer8 on 8/9/16.
//  Copyright © 2016 CreatuDevelopers. All rights reserved.
//

import UIKit

class News: NSObject {
    private
    var _news_Id = Int()
    var _bank_Id = Int()
    var _topic = String()
    var _details = String()
    var _dateTime = String()
    
    internal
    var news_Id:Int{
        get{
            return _news_Id
        }
        set{
            _news_Id = newValue
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
    
    var topic:String{
        get{
            return _topic
        }
        set{
            _topic = newValue
        }
    }
    
    var details:String{
        get{
            return _details
        }
        set{
            _details = newValue
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
