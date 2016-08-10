//
//  EMICalculationDataVC.swift
//  CBanking
//
//  Created by Mohan Singh Thagunna on 8/6/16.
//  Copyright © 2016 CreatuDevelopers. All rights reserved.
//

import UIKit

class EMICalculationDataVC:  UIViewController,navBarBurgerMenuTapped,tabBarIconTapped,SWRevealViewControllerDelegate  {
    
    //MARK:--Declaration
    var emiObj = EMIModel()
    // MARK: -- Self ViewController Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //adding navbar to the view controller
        let customNavView =  CustomNavView(frame: CGRectMake(0, 0,UIScreen.mainScreen().bounds.width, 60))
        customNavView.setTitle(AppName)
        customNavView.setLeftImage("BackWhite.png")
        customNavView.setRightImage("profileInitWhite.png")
        self.view.addSubview(customNavView);
        customNavView.delegate = self
        
        
        //adding tabbar to the view controller
//        let customTabView =  CustomTabView(frame: CGRectMake(0, UIScreen.mainScreen().bounds.height-50,UIScreen.mainScreen().bounds.width, 50))
//        customTabView.setSelectedIcon(0)
//        self.view.addSubview(customTabView);
//        customTabView.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: -- nav bar deligate button tapped
    func navBarButtonTapped(sender: UIButton) {
        self.navigationController?.popViewControllerAnimated(true)

    }
    
    // MARK: -- tab bar deligate button tapped
    func onTabMenuTapped(sender: UIButton) {
        tabBarController?.selectedIndex = sender.tag
    }
    //MARK: --Table View Deligate
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> EMIResultCell {
        //[P x R x (1+R)^N]/[(1+R)^N-1] 11/(12 x 100
        var p = emiObj.p
        var r = emiObj.r
        var n = emiObj.n
        
        r  = emiObj.r / (12 * 100)

        let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as! EMIResultCell
        if indexPath.row == 0 {
            cell.txtlblTitle.text = "One Month Cost"
            n = 1
                   }
        else{
              cell.txtlblTitle.text = "Total Cost"
        n = emiObj.n
        }
        
        let result = (p * r * pow(Double((1 + r)),Double(n))) / pow(Double((1 + r)),Double(n - 1))
        cell.txtlblResult.text = "\(result)"
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
       
        
    }
    // MARK: -- reveal view controller deligate button tapped
    func revealController(revealController: SWRevealViewController!, willMoveToPosition position: FrontViewPosition) {
        
        if(position == FrontViewPositionLeft) {
            //menu closed
            switch(CBanking.sharedInstance.menuSelect){
            case 0:
                //home selected
                self.navigationController?.popToRootViewControllerAnimated(true)
                break
            case 1:
                //emi selected
                //deposite button tapped
                let emiCalculatorVC = self.storyboard!.instantiateViewControllerWithIdentifier("emiCalculatorVC") as! EMICalculatorVC
                self.navigationController!.pushViewController(emiCalculatorVC, animated: true)
                break
                
            case 2:
                //emi selected
                //deposite button tapped
                let currencyConvVC = self.storyboard!.instantiateViewControllerWithIdentifier("currencyConvVC") as! CurrencyConverterVC
                self.navigationController!.pushViewController(currencyConvVC, animated: true)
                break
            case 3:
                //emi selected
                //deposite button tapped
                let settingVC = self.storyboard!.instantiateViewControllerWithIdentifier("settingVC") as! SettingsVC
                self.navigationController!.pushViewController(settingVC, animated: true)
                break
            default:
                break
            }
        }
        else{
            //menu open
        }
    }
    
    
}