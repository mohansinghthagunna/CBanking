//
//  CustomTabView.swift
//  Waste Info Swift
//
//  Created by Developer8 on 6/8/16.
//  Copyright © 2016 Mohan. All rights reserved.
//

import UIKit
protocol tabBarIconTapped {
    func onTabMenuTapped(sender: UIButton)
}
class CustomTabView: UIView {
    
    //MARK: --Outlets
    
    @IBOutlet weak var btnBankList: UIButton!
    @IBOutlet weak var btnFeedBack: UIButton!
    @IBOutlet weak var btnNews: UIButton!
    @IBOutlet weak var btnHome: UIButton!
    //MARK: --Declarations
    var view:UIView!
    var delegate: tabBarIconTapped?
    
    //MARK: --View Setup
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        setup()
    }
    
    func loadViewFromNib() -> UIView {
        let bundle = NSBundle(forClass:self.dynamicType)
        let nib = UINib(nibName: "CustomTabView", bundle: bundle)
        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        return view
    }
    
    func setup() {
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
        resetButtonImage()
        addSubview(view)
        
    }
    
    //MARK: --BUtton Actions
    @IBAction func  tabButtonTapped(sender: AnyObject) {
        delegate?.onTabMenuTapped(sender as! UIButton)
    }
    
    //MARK: --Custom Functions
    func isTabBarShow(flag:Bool)  {
        
        self.view.hidden = flag
        
    }
    func resetButtonImage(){
        btnHome.setImage(UIImage(named:"homeUnselected.png"), forState: .Normal)
        btnNews.setImage(UIImage(named:"newsUnselected.png"), forState: .Normal)
        btnBankList.setImage(UIImage(named:"bankListUnselected.png"), forState: .Normal)
        btnFeedBack.setImage(UIImage(named:"FeedbackUnselected.png"), forState: .Normal)
    }
    
    func setSelectedIcon(let index:Int){
        switch index {
        case 0:
            btnHome.setImage(UIImage(named:"homeSelected.png"), forState: .Normal)
        case 1:
            btnNews.setImage(UIImage(named:"newsSelected.png"), forState: .Normal)
        case 2:
            btnBankList.setImage(UIImage(named:"bankListSelected.png"), forState: .Normal)
        case 3:
            btnFeedBack.setImage(UIImage(named:"feedbackSelected.png"), forState: .Normal)
            
        default:
            print("no tab menu click found button id =  \(index)")
            break
        }
    }
}
