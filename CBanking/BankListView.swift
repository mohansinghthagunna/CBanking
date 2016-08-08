//
//  BankListView.swift
//  CBanking
//
//  Created by Mohan Singh Thagunna on 8/4/16.
//  Copyright © 2016 CreatuDevelopers. All rights reserved.
//

import UIKit

class BankListView: UIView,UITableViewDelegate {
    //MARK: --Outlets
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var headImage: UIImageView!
    
    
    //MARK: --Declarations
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
        let nib = UINib(nibName: "BankListView", bundle: bundle)
        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        
        return view
    }
    
    override func layoutSubviews() {
        tableView.registerNib(UINib(nibName: "BankListCell", bundle: nil), forCellReuseIdentifier: "Cell")
    }
    //MARK:--Custom Function
    func resetHeadImage(image:UIImage){
        headImage.image = image
    }
    //MARK: --Table View Delegates
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> BankListCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as! BankListCell
       
        return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 100
        
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
       // tableView.hidden = true
        //  btnLoanType.titleLabel!.text = loanTypes[indexPath.row]
    }
    
}
