//
//  ViewController.swift
//  FundoHR
//
//  Created by BridgeLabz on 23/08/17.
//  Copyright © 2017 Self Emp. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    //MARK:IBOutlets
    
    @IBOutlet weak var horizontalScrollView: UIScrollView!
    
    @IBOutlet weak var adminView: UIView!
    
    
    @IBAction func loginButtonAction(_ sender: Any) {
        let startPoint = CGPoint(x: self.view.frame.width - 60, y: 55)
        let aView = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 180))
        
        let popover = Popover(options: nil, showHandler: nil, dismissHandler: nil)
        popover.show(aView, point: startPoint)

    }
    
    @IBAction func userViewAction(_ sender: Any) {
        let startPoint = CGPoint(x: self.view.frame.width - 60, y: 55)
        let aView = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 180))

        let popover = Popover(options: nil, showHandler: nil, dismissHandler: nil)
        popover.show(aView, point: startPoint)
        horizontalScrollView.contentOffset = CGPoint(x: 356, y: 0)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

