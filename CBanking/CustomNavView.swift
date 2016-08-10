//
//  CustomNavView.swift
//  Waste Info Swift
//
//  Created by Developer8 on 6/7/16.
//  Copyright © 2016 Mohan. All rights reserved.
//

import UIKit

protocol navBarBurgerMenuTapped {
    func navBarButtonTapped(sender: UIButton)
}


@IBDesignable class CustomNavView: UIView {
    
     //MARK: --Outlets
    @IBOutlet var lblTitle: UILabel!
    
    @IBOutlet var btnRight: UIImageView!
    @IBOutlet var btnLeft: UIButton!
    //MARK: --Declarations
    var delegate: navBarBurgerMenuTapped?
    var view:UIView!
    
    //MARK: --View Setup
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        setup()
    }
    
    func setup() {
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
        addSubview(view)
        
    }
    
    func loadViewFromNib() -> UIView {
        let bundle = NSBundle(forClass:self.dynamicType)
        let nib = UINib(nibName: "CustomNavView", bundle: bundle)
        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        
        return view
    }
    
    //MARK: --Custom Functions
    func setTitle(title:String){
        //lblTitle.text = title
    }
    
    func setLeftImage(image:String){
        btnLeft.setImage(UIImage(named: image), forState: .Normal)
    }
    func setRightImage(image:String){
        btnRight.image = UIImage(named: image)
    }
    
    //MARK: --BUtton Actions
    @IBAction func leftButtonClick(sender: AnyObject) {
       //  revealViewController().revealToggleAnimated(true)
         delegate?.navBarButtonTapped(sender as! UIButton)
    }
    
    
}
