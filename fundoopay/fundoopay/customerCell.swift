//
//  customerCell.swift
//  fundoopay
//
//  Created by BridgeLabz on 01/09/17.
//  Copyright © 2017 Self Emp. All rights reserved.
//

import UIKit

class customerCell: UITableViewCell {

    
    @IBOutlet weak var parentView: UIView!
    @IBOutlet weak var mobileNoLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var inviteButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
    }

    
    
}
