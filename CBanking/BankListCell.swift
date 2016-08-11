//
//  BankListCell.swift
//  CBanking
//
//  Created by Mohan Singh Thagunna on 8/4/16.
//  Copyright © 2016 CreatuDevelopers. All rights reserved.
//

import UIKit

class BankListCell: UITableViewCell {

    @IBOutlet weak var viewLoanDepo: UIView!
    @IBOutlet weak var lblRate: UILabel!
    @IBOutlet weak var lblDistance: UILabel!
    @IBOutlet weak var lblAmount: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
