//
//  NewsVC.swift
//  CBanking
//
//  Created by Mohan Singh Thagunna on 8/1/16.
//  Copyright © 2016 CreatuDevelopers. All rights reserved.
//

import UIKit

class NewsVC: UIViewController,navBarBurgerMenuTapped,tabBarIconTapped,SWRevealViewControllerDelegate ,UITableViewDelegate{

    //MARK: -- Outlets
    
    
    // MARK: -- Self ViewController Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        revealViewController().delegate = self
        
    }

    override func viewWillAppear(animated: Bool) {
        self.tabBarController?.tabBar.hidden = true
        
        
        //adding navbar to the view controller
        let customNavView =  CustomNavView(frame: CGRectMake(0, 0,UIScreen.mainScreen().bounds.width, 60))
        customNavView.setTitle(AppName)
        self.view.addSubview(customNavView);
        customNavView.delegate = self
        
        
        //adding tabbar to the view controller
        let customTabView =  CustomTabView(frame: CGRectMake(0, UIScreen.mainScreen().bounds.height-50,UIScreen.mainScreen().bounds.width, 50))
        customTabView.setSelectedIcon(1)
        self.view.addSubview(customTabView);
        customTabView.delegate = self
        
    }
    // MARK: -- nav bar deligate button tapped
    func navBarButtonTapped(sender: UIButton) {
        revealViewController().rearViewRevealWidth = UIScreen.mainScreen().bounds.width - 62
        revealViewController().revealToggle(sender)
    }
    
    // MARK: -- tab bar deligate button tapped
    func onTabMenuTapped(sender: UIButton) {
        tabBarController?.selectedIndex = sender.tag
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
    //MARK: --Table View Deligate
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> NewsListCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as! NewsListCell
        
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
