//
//  customButton.swift
//  fundoopay
//
//  Created by BridgeLabz on 02/09/17.
//  Copyright © 2017 Self Emp. All rights reserved.
//

import UIKit


class customButton: UIButton {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    var path: UIBezierPath!
    let myTextLayer = CATextLayer()
    let shapeLayer = CAShapeLayer()
    
    override func awakeFromNib() {
        backgroundColor = UIColor.clear
       // addTarget(self, action: #selector(touchDown), for: .touchDown)
        
    }
    
    override func draw(_ rect: CGRect) {
        // Drawing code
        
        path = UIBezierPath()
        let width = self.frame.width
        let height = self.frame.height
        let xPosition = self.frame.origin.x-self.frame.origin.x
        let yPositon = self.frame.origin.y
        
        print("............positions............")
        print("Xposition::%@",xPosition)
        print("yposition::%@",yPositon)
        print("width::%@",width)
        print("height::%@",height)
        print("............positions............")

        //Generate path for shapelayer
        path.move(to: CGPoint(x: xPosition-30 , y: 0)) //-30
        path.addLine(to: CGPoint(x: xPosition+width , y: 0)) //186
        path.addLine(to: CGPoint(x: xPosition+width , y: height))
        path.addLine(to: CGPoint(x: xPosition+30, y: height))
        path.close()
        
        
        //fill shapelayer
        shapeLayer.strokeColor = UIColor.red.cgColor
        shapeLayer.fillColor = UIColor.rgbColor(red: 0, green: 128, blue: 0).cgColor
        shapeLayer.path = path.cgPath
        layer.addSublayer(shapeLayer)
        
        //draw textLayer on button
        myTextLayer.string = "Outstanding Amounts"
        myTextLayer.fontSize = 16
        myTextLayer.backgroundColor = UIColor.clear.cgColor
        myTextLayer.foregroundColor = UIColor.white.cgColor
        myTextLayer.frame = CGRect(x: shapeLayer.frame.midX+20, y: shapeLayer.frame.midY+15, width: 170, height: 30)
        layer.addSublayer(myTextLayer)
        
    }
    
    //apply action to button
//    func touchDown(button: customButton, event: UIEvent) {
//        if let touch = event.touches(for: button)?.first {
//            let location = touch.location(in: button)
//            
//            if path.contains(location) == false {
//                //click action disappears
//                button.cancelTracking(with: nil)
//            }
//            else
//            {
//                //click action appears
//                self.setAnimate()
//            }
//        }
//        
//    }
    
    
    
        
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    

        
        
        if let touch = touches.first {
            let currentPoint = touch.location(in: self)
            
            if path.contains(currentPoint){
                //tap detected do what ever you want ..;)
                
                self.setAnimate()
                
                 print(" in path")
                
            }else{
                //ooops you taped on other position in view
                
                print("not in path")
                
            }
            // do something with your currentPoint
        }
        
    }
    

    //Apply animation to button
    func setAnimate()
    {

        UIView.animate(withDuration: 0.5, delay: 1.0, animations: {
            //change in view
            self.myTextLayer.foregroundColor = UIColor.lightText.cgColor
            self.myTextLayer.opacity = 0.5
            self.shapeLayer.frame.origin.x -= 10
            self.myTextLayer.frame.origin.x -= 10
            self.layoutIfNeeded()

        }, completion: { (finished) -> Void in
            // ....set to default
            self.myTextLayer.foregroundColor = UIColor.white.cgColor
            self.myTextLayer.opacity = 1
            self.shapeLayer.frame.origin.x += 10
            self.myTextLayer.frame.origin.x += 10
        })
    }
    

}
