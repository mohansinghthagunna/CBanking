//
//  CurrencyConverterVC.swift
//  CBanking
//
//  Created by Mohan Singh Thagunna on 8/6/16.
//  Copyright © 2016 CreatuDevelopers. All rights reserved.
//

import UIKit

class CurrencyConverterVC: UIViewController,navBarBurgerMenuTapped,tabBarIconTapped,SWRevealViewControllerDelegate,UITableViewDataSource,UITableViewDelegate  {
    
    //MARK: --OUTLET
    
    @IBOutlet var btnConvertFrom: UIButton!
    @IBOutlet var txtFieldAmount: UITextField!
    
    @IBOutlet var btnCOnvertTo: UIButton!
    @IBOutlet var tableVIew0: UITableView!
    
    @IBOutlet var tableView1: UITableView!
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
    //MARK:-- Button Action
    @IBAction func CurrencyConvCalculationButtonActions(sender: AnyObject) {
        if sender.tag == 0{
            if tableVIew0.hidden {
                tableVIew0.hidden = false
            }
            else{
                tableVIew0.hidden = true
            }
            
        }
        else if sender.tag == 1 {
            if  tableView1.hidden {
                tableView1.hidden = false
            }
            else{
                 tableView1.hidden = true
            }
            
                   }
        else if sender.tag == 2{
            let convertingDataVC = self.storyboard?.instantiateViewControllerWithIdentifier("convertingDataVC") as! ConvertingDataVC
            self.navigationController?.pushViewController(convertingDataVC, animated: true)

        }
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
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell")!
        cell.textLabel!.text = "Demo\(indexPath.row)"
        cell.textLabel?.textColor = UIColor.blackColor()
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if tableView.tag == 0{
            btnConvertFrom.setTitle("5", forState: .Normal)
        }
        else{
               btnCOnvertTo.setTitle("6", forState: .Normal)
        }
        tableView.hidden = true
        
    }

}
