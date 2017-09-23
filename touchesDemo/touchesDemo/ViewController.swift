//
//  ViewController.swift
//  touchesDemo
//
//  Created by BridgeLabz on 13/09/17.
//  Copyright © 2017 Self Emp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.isUserInteractionEnabled = true
        label.isUserInteractionEnabled = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //touches began
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        let touch: UITouch = touches.first!
        
        if (touch.view == label){
            print("touchesBegan | This is an ImageView")
        }else{
            print("touchesBegan | This is not an ImageView")
        }

    }
    
    //2.touchesMoved
    
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        super.touchesMoved(touches, with: event)
        
        let touch: UITouch = touches.first!
        
        if (touch.view == label){
            print("touchesMoved | This is an ImageView")
        }else{
            print("touchesMoved | This is not an ImageView")
        }
        
    }
    
    //3.touchesEnded
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesMoved(touches, with: event)
        
        let touch: UITouch = touches.first!
        
        if (touch.view == label){
            print("touchesEnded | This is an ImageView")
        }else{
            print("touchesEnded | This is not an ImageView")
        }
        
    }


}

