//
//  ListTableViewCell.swift
//  Exam1
//
//  Created by Mobio on 5/28/17.
//  Copyright © 2017 Mobio. All rights reserved.
//

import UIKit

class ListTableViewCell: UITableViewCell {

    @IBOutlet weak var nameInfo: UILabel!
    
    @IBOutlet weak var uniInfo: UILabel!
    
    @IBOutlet weak var deptInfo: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
