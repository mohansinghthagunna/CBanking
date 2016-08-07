//
//  NewsListCell.swift
//  CBanking
//
//  Created by Mohan Singh Thagunna on 8/5/16.
//  Copyright © 2016 CreatuDevelopers. All rights reserved.
//

import UIKit

class NewsListCell: UITableViewCell {

    //MARK: --Outlets
    
    @IBOutlet weak var lblViewNewsList: UILabel!
    @IBOutlet weak var imgViewNewsList: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
