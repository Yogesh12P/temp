//
//  facebookVC.swift
//  facebook
//
//  Created by BridgeLabz on 14/09/17.
//  Copyright © 2017 Self Emp. All rights reserved.
//

import UIKit

let reusableIdentifier = "FacebookCell"
class facebookVC: UIViewController, UITableViewDelegate, UITableViewDataSource{

    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "facebookViewCell", bundle: nil), forCellReuseIdentifier: reusableIdentifier)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView(frame: .zero)
        

        tableView.estimatedRowHeight = 44.0
        tableView.rowHeight = UITableViewAutomaticDimension

        // Do any additional setup after loading the view.
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: reusableIdentifier, for: indexPath) as! facebookViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        var cellHeight : CGFloat?
       // let cell = tableView.dequeueReusableCell(withIdentifier: reusableIdentifier, for: indexPath) as! facebookViewCell

        let cell = facebookViewCell()
        if indexPath.row == 0
        {
            cellHeight = 200
            cell.hideImageView()
        }
        if indexPath.row == 1
        {
            cellHeight = 300
            cell.hideProgressView()
        }
        if indexPath.row == 2
        {
            cellHeight = 400
            cell.hideTitleView()
        }
        
        return cellHeight!
    }

    
    
    
}
