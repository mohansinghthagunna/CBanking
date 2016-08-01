//
//  SideMenuVC.swift
//  CBanking
//
//  Created by Mohan Singh Thagunna on 7/30/16.
//  Copyright © 2016 CreatuDevelopers. All rights reserved.
//

import UIKit

protocol sideMenuDelegate{
    func sideMeneSelectionChanged(index:Int)
}

class SideMenuVC: UIViewController {
//MARK: -- Declarations
    let Menu = ["HOME","MENU1","MENU2","MENU3","MENU4","MENU5"]
    var delegate: sideMenuDelegate?
    
    // MARK: -- Self ViewController Functions
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: --Table View Deligate
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Menu.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell")!
        cell.textLabel!.text = Menu[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
       delegate?.sideMeneSelectionChanged(indexPath.row)
    }
}
