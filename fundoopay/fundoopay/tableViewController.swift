//
//  tableViewController.swift
//  fundoopay
//
//  Created by BridgeLabz on 01/09/17.
//  Copyright © 2017 Self Emp. All rights reserved.
//

import UIKit

private let cellReuseIdentifier = "tableCell"

class tableViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {

    //MARK:-Variables
    let nameArray = ["Mohan" , "Kalpesh" , "Alkesh" , "Rahul" , "Mukesh"]
    let mobileArray = ["9988776655" , "9876543321" , "7865432512" , "8976453424" , "8877665544"]
    let addressArray = ["801 Sai samarth Business Park, Deonar Road, Deonar, Mumbai, Maharashtra, 400088"]
    
    //MARK:-IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    //viewDidload method
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
        
        //registration of Xib
        let nib = UINib(nibName: "customerCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "tableCell")
    }
    
    //viewWillAppear method
    override func viewWillAppear(_ animated: Bool) {
       
        tableView.tableFooterView = UIView.init(frame: CGRect.zero)

    }


    //MARK:- tableViewDataSource Methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameArray.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as! customerCell
        cell.nameLabel.text = nameArray[indexPath.row]
        cell.addressLabel.text = addressArray[0]
        cell.mobileNoLabel.text = mobileArray[indexPath.row]
        return cell
    }
    
    
}
