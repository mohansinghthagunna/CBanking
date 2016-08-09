//
//  SideMenuVC.swift
//  CBanking
//
//  Created by Mohan Singh Thagunna on 7/30/16.
//  Copyright © 2016 CreatuDevelopers. All rights reserved.
//

import UIKit


class SideMenuVC: UIViewController,UITableViewDelegate {
    //MARK: --OUTLET
    @IBOutlet weak var tableView: UITableView!
//MARK: -- Declarations
    let Menu = ["HOME","EMI Calculator","Currency Conveter","Setting"]
    
    // MARK: -- Self ViewController Functions
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override  func viewWillAppear(animated: Bool) {
        tableView.reloadData()
    }
    
    //MARK: --Table View Deligate
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableView.backgroundColor = UIColor.clearColor()
        return Menu.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell")!
        cell.textLabel!.text = Menu[indexPath.row]
        if CBanking.sharedInstance.menuSelect == indexPath.row {
            cell.textLabel?.textColor = UIColor.whiteColor()
        }
        else{
            cell.textLabel?.textColor = UIColor.blackColor()
        }
        cell.backgroundColor = UIColor.clearColor()
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
          CBanking.sharedInstance.menuSelect = indexPath.row
          revealViewController().revealToggleAnimated(true)
    }
 
}
