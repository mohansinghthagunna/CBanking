//
//  ConvertingDataVC.swift
//  CBanking
//
//  Created by Mohan Singh Thagunna on 8/6/16.
//  Copyright © 2016 CreatuDevelopers. All rights reserved.
//

import UIKit

class ConvertingDataVC: UIViewController,navBarBurgerMenuTapped{

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //adding navbar to the view controller
        let customNavView =  CustomNavView(frame: CGRectMake(0, 0,UIScreen.mainScreen().bounds.width, 60))
        customNavView.setTitle(AppName)
        self.view.addSubview(customNavView);
        customNavView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: -- nav bar deligate button tapped
    func navBarButtonTapped(sender: UIButton) {
        self.navigationController?.popViewControllerAnimated(true)
        
    }
    

}
