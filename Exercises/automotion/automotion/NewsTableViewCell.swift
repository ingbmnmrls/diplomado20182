//
//  NewsTableViewCell.swift
//  automotion
//
//  Created by Benjamin Morales on 16/03/18.
//  Copyright © 2018 Benjamin Morales. All rights reserved.
//

import UIKit

class NewsTableViewCell: UITableViewCell {

    @IBOutlet weak var ivNews: UIImageView!
    @IBOutlet weak var lblTitleNews: UILabel!
    @IBOutlet weak var lblDescriptionNews: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
