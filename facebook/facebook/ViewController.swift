//
//  ViewController.swift
//  facebook
//
//  Created by BridgeLabz on 14/09/17.
//  Copyright © 2017 Self Emp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    var count = 0
    var text : String?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func tapAction(_ sender: Any) {
       
        if count == 0
        {
            text = textField.text
            label.text = text
        }
        else
        {
            let bulletPoint: String = "\u{2022}"
            
            
            
           // let ans = text! + "·" + textField.text! //SHIFT+OPT+9
             let ans = text! + bulletPoint + textField.text!
            
            
            label.text = ans
            
        }
         count += 1
        
        
    }
}

