//
//  outstandingBillsButton.swift
//  fundoopay
//
//  Created by BridgeLabz on 02/09/17.
//  Copyright © 2017 Self Emp. All rights reserved.
//

import UIKit

class outstandingBillsButton: UIButton {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    var path: UIBezierPath!
    
    override func awakeFromNib() {
        backgroundColor = UIColor.clear
        addTarget(self, action: #selector(touchDown), for: .touchDown)
    }
    
    override func draw(_ rect: CGRect) {
        // Drawing code
        
        path = UIBezierPath()
        let width = self.frame.width
        let height = self.frame.height
        let xPosition = self.frame.origin.x-self.frame.origin.x
        let yPositon = self.frame.origin.y

        
        path.move(to: CGPoint(x: width-30, y: 0))
        path.addLine(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: 0, y: height))
        path.addLine(to: CGPoint(x: width+30, y: height))
        path.close()
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.strokeColor = UIColor.clear.cgColor
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.path = path.cgPath
        layer.addSublayer(shapeLayer)
        
        
    }
    
    func touchDown(button: customButton, event: UIEvent) {
        if let touch = event.touches(for: button)?.first {
            let location = touch.location(in: button)
            
            if path.contains(location) == false {
                button.cancelTracking(with: nil)
            }
        }
        
    }
    
    

}
