//
//  BankListVC.swift
//  CBanking
//
//  Created by Mohan Singh Thagunna on 8/1/16.
//  Copyright © 2016 CreatuDevelopers. All rights reserved.
//

import UIKit

class BankListVC: UIViewController ,navBarBurgerMenuTapped,tabBarIconTapped,SWRevealViewControllerDelegate {
    
    //MARK: -- Outlets
    
    //MARK:-- Declaration
    var image = UIImage()
    // MARK: -- Self ViewController Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        revealViewController().delegate = self
        
    }
    
    override func viewWillAppear(animated: Bool) {
        self.tabBarController?.tabBar.hidden = true
        
        
        //adding tabbar to the view controller
        let bankListView =  BankListView(frame: CGRectMake(0,0,UIScreen.mainScreen().bounds.width, UIScreen.mainScreen().bounds.height-50))
        bankListView.resetHeadImage(image)
        
        self.view.addSubview(bankListView);
        
        
        //adding navbar to the view controller
        let customNavView =  CustomNavView(frame: CGRectMake(0, 0,UIScreen.mainScreen().bounds.width, 60))
        customNavView.setTitle(AppName)
        self.view.addSubview(customNavView);
        customNavView.delegate = self
    
        
        //adding tabbar to the view controller
        let customTabView =  CustomTabView(frame: CGRectMake(0, UIScreen.mainScreen().bounds.height-50,UIScreen.mainScreen().bounds.width, 50))
        customTabView.setSelectedIcon(2)
        if tabBarController?.selectedIndex == 2{
        customNavView.setLeftImage("hamburgurWhite.png")
        customNavView.setRightImage("profileInitWhite.png")
        }
        else{
            customNavView.setLeftImage("BackWhite.png")
            customNavView.setRightImage("profileInitWhite.png")
        }
        self.view.addSubview(customTabView);
        customTabView.delegate = self
        }
    
    
    //MARK: --Custom Function
    func setTopImages(image:UIImage){
        self.image = image
    }
    
    // MARK: -- nav bar deligate button tapped
    func navBarButtonTapped(sender: UIButton) {
        if tabBarController?.selectedIndex == 2 {
        revealViewController().rearViewRevealWidth = UIScreen.mainScreen().bounds.width - 62
        revealViewController().revealToggle(sender)
        }
        else{
            self.navigationController?.popViewControllerAnimated(true)
        }
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
    
    
}