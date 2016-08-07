//
//  CurrencyConverterVC.swift
//  CBanking
//
//  Created by Mohan Singh Thagunna on 8/6/16.
//  Copyright © 2016 CreatuDevelopers. All rights reserved.
//

import UIKit

class CurrencyConverterVC: UIViewController,navBarBurgerMenuTapped,tabBarIconTapped,SWRevealViewControllerDelegate  {
  // MARK: -- Self ViewController Functions
    override func viewDidLoad() {
        super.viewDidLoad()

        //adding navbar to the view controller
        let customNavView =  CustomNavView(frame: CGRectMake(0, 0,UIScreen.mainScreen().bounds.width, 60))
        customNavView.setTitle(AppName)
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
    //MARK:-- Button Action
    @IBAction func CurrencyConvCalculationButtonActions(sender: AnyObject) {
        if sender.tag == 0{
            
        }
        else if sender.tag == 1 {
            
                   }
        else if sender.tag == 2{
            let convertingDataVC = self.storyboard?.instantiateViewControllerWithIdentifier("convertingDataVC") as! ConvertingDataVC
            self.navigationController?.pushViewController(convertingDataVC, animated: true)

        }
    }
    // MARK: -- nav bar deligate button tapped
    func navBarButtonTapped(sender: UIButton) {
        self.navigationController?.popViewControllerAnimated(true)
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
