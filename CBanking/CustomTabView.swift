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
    func resetButtonImage(){
//        btnCalender.setBackgroundImage(UIImage(named:"calOff.png"), forState: .Normal)
//        btnMaterials.setBackgroundImage(UIImage(named:"wasteOff.png"), forState: .Normal)
//        btnReport.setBackgroundImage(UIImage(named:"reportOff.png"), forState: .Normal)
//        btnMoreInfo.setBackgroundImage(UIImage(named:"servicesOff.png"), forState: .Normal)
    }
    
    func setSelectedIcon(let index:Int){
//        switch index {
//        case 0:
//            btnCalender.setBackgroundImage(UIImage(named:"calOn.png"), forState: .Normal)
//        case 1:
//            btnMaterials.setBackgroundImage(UIImage(named:"wasteOn.png"), forState: .Normal)
//        case 2:
//            btnReport.setBackgroundImage(UIImage(named:"reportOn.png"), forState: .Normal)
//        case 3:
//            btnMoreInfo.setBackgroundImage(UIImage(named:"servicesOn.png"), forState: .Normal)
//            
//        default:
//            print("no tab menu click found button id =  \(index)")
//            break
//        }
    }
}
