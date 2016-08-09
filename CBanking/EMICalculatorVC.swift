 //
//  EMICalculatorVC.swift
//  CBanking
//
//  Created by Mohan Singh Thagunna on 8/6/16.
//  Copyright © 2016 CreatuDevelopers. All rights reserved.
//

import UIKit

 class EMICalculatorVC: UIViewController,navBarBurgerMenuTapped,tabBarIconTapped,SWRevealViewControllerDelegate,UIPickerViewDelegate,UIPickerViewDataSource  {
    
    //MARK: --DEClaration
    var yearSet = 0
    var monthSet = 0

    //MARK:--OUTLETS
    
    @IBOutlet var viewPicker: UIView!
    @IBOutlet var pickerView: UIPickerView!
    @IBOutlet var txtFieldAmount: UITextField!
    
    @IBOutlet var btnTime: UIButton!
    @IBOutlet var txtFieldInterest: UITextField!
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
    
    // MARK: -- nav bar deligate button tapped
    func navBarButtonTapped(sender: UIButton) {
        revealViewController().rearViewRevealWidth = UIScreen.mainScreen().bounds.width - 62
        revealViewController().revealToggle(sender)

    }
    
    // MARK: -- tab bar deligate button tapped
    func onTabMenuTapped(sender: UIButton) {
        tabBarController?.selectedIndex = sender.tag
    }
    //MARK: --Button Actions
    
    @IBAction func btnDoneTapped(sender: AnyObject) {
        
        
        viewPicker.hidden = true
        btnTime.hidden = false
        btnTime.setTitle("\(yearSet) Year \(monthSet) Month", forState: .Normal)
    }
    @IBAction func btnCalcelTapped(sender: AnyObject) {
        viewPicker.hidden = true
        btnTime.hidden = false
    }
    @IBAction func EMICalculationButtonActions(sender: AnyObject) {
        if sender.tag == 0{
            viewPicker.hidden = false
             btnTime.hidden = true
        }
        else if sender.tag == 1 {
            
            let emiObj = EMIModel()
            emiObj.n = (Double)(txtFieldAmount.text!)!
            emiObj.p = (Double)(txtFieldInterest.text!)!
            emiObj.r = (Double)(yearSet * 12 + monthSet)
            let calculationEMI = self.storyboard?.instantiateViewControllerWithIdentifier("calculationEMI") as! EMICalculationDataVC
            calculationEMI.emiObj = emiObj
            self.navigationController?.pushViewController(calculationEMI, animated: true)
        }
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
    //Mark: --Picker View Delegates
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0{
            return 31
        }
        else if component == 1 {
            return 12
        }
        else{
            return 30
        }
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0{
            return "\(row) Year"
        }
        else if component == 1{
            return "\(row) Month"
        }
        else{
            return "\(row) Day"
        }
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if component == 0{
            yearSet = row
        }
        if component == 1{
            monthSet = row
        }
        
        
    }
    
 }
