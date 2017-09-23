//
//  facebookViewCell.swift
//  facebook
//
//  Created by BridgeLabz on 14/09/17.
//  Copyright © 2017 Self Emp. All rights reserved.
//

import UIKit

class facebookViewCell: UITableViewCell {

    //IBOutlets
    @IBOutlet weak var titleView: UIView!
    @IBOutlet weak var image_View: UIView!
    @IBOutlet weak var socialView: UIView!
    @IBOutlet weak var progressView: UIView!
    
    //Constraints
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.image_View.frame.size.height = 200
        self.titleView.frame.size.height = 100
        self.socialView.frame.size.height = 100
        self.progressView.frame.size.height = 50
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    //
    func hideTitleView()
    {
        
       
    }
    
    func hideImageView()
    {
        
       
    }
    
    func hideSocialView()
    {
        
        
    }
    
    func hideProgressView()
    {
        
    }

    
    
}
