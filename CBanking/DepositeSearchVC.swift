//
//  DepositeSearchVC.swift
//  CBanking
//
//  Created by Mohan Singh Thagunna on 7/28/16.
//  Copyright © 2016 CreatuDevelopers. All rights reserved.
//

import UIKit

class DepositeSearchVC:  UIViewController ,navBarBurgerMenuTapped,tabBarIconTapped,UITableViewDelegate,UITableViewDataSource,UIPickerViewDelegate,UIPickerViewDataSource {

    //MARK: -- Outlets
    @IBOutlet weak var ViewPicker: UIView!
    @IBOutlet weak var pickerView: UIView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var btnLoanType: UIButton!
    @IBOutlet weak var btnTimePeriod: UIButton!
    @IBOutlet weak var txtFieldTotalAmount: UITextField!
    
    //Mark: --Decalrations
    let depositeTypes:[String] = ["Loan 1","Loan 2","Loan 3","Loan 4","Loan 5","Loan 6"]
    var yearSet = 0
    var monthSet = 0
    var customTabView =  CustomTabView()
    
    // MARK: -- Self ViewController Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //adding navbar to the view controller
        let customNavView =  CustomNavView(frame: CGRectMake(0, 0,UIScreen.mainScreen().bounds.width, 60))
        customNavView.setTitle(AppName)
        customNavView.setLeftImage("hamburgurWhite.png")
        customNavView.setRightImage("profileInitWhite.png")
        self.view.addSubview(customNavView);
        customNavView.delegate = self
        
        
        //adding tabbar to the view controller
        customTabView =  CustomTabView(frame: CGRectMake(0, UIScreen.mainScreen().bounds.height-50,UIScreen.mainScreen().bounds.width, 50))
        customTabView.setSelectedIcon(0)
        self.view.addSubview(customTabView);
        customTabView.delegate = self
        
    }
    
    override func viewWillAppear(animated: Bool) {
        self.tabBarController?.tabBar.hidden = true
    }
    
    //Mark: --Button Action
    
    @IBAction func buttonTapped(sender: AnyObject) {
        if sender.tag == 0{
            //loan type button
            pickerView.hidden = true
             customTabView.isTabBarShow(false)
            if tableView.hidden {
            tableView.hidden = false
            }
            else{
                tableView.hidden = true
            }
        }
        else if sender.tag == 1{
            //timer button
            tableView.hidden = true
            if pickerView.hidden {
                pickerView.hidden = false
            }
            else{
                pickerView.hidden = true
                
            }
            customTabView.isTabBarShow(true)
            
        }
        else if sender.tag == 2{
            let bankListVC = self.storyboard!.instantiateViewControllerWithIdentifier("BankListVC") as! BankListVC
            bankListVC.setTopImages(UIImage(named: "deposit.png")!)
            self.navigationController!.pushViewController(bankListVC, animated: true)
            
        }
    }
    @IBAction func pickerViewDoneTapped(sender: AnyObject) {
        ViewPicker.hidden = true
        customTabView.isTabBarShow(false)
        btnTimePeriod.setTitle("\(yearSet) Year \(monthSet) Month", forState: .Normal)
    }
    
    @IBAction func PickerViewCancelTapped(sender: AnyObject) {
        ViewPicker.hidden = true
        customTabView.isTabBarShow(false)
    }
    
    //MARK: --Table View Deligate
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return depositeTypes.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell")!
        cell.textLabel!.text = depositeTypes[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.hidden = true
        btnLoanType.setTitle(depositeTypes[indexPath.row], forState: .Normal)
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
    
    // MARK: -- nav bar deligate button tapped
    func navBarButtonTapped(sender: UIButton) {
 self.navigationController?.popViewControllerAnimated(true)
    }
    
    // MARK: -- tab bar deligate button tapped
    func onTabMenuTapped(sender: UIButton) {
       
        tabBarController?.selectedIndex = sender.tag
    }

}
