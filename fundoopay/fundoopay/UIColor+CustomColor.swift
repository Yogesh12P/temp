//
//  UIColor+CustomColor.swift
//  fundoopay
//
//  Created by BridgeLabz on 02/09/17.
//  Copyright © 2017 Self Emp. All rights reserved.
//

import UIKit

extension UIColor {
    
    class var customGreen: UIColor {
        let darkGreen = 0x008110
        return UIColor.rgbColor(fromHex: darkGreen)
    }
    
    class func rgbColor(fromHex: Int) -> UIColor {
        
        let red =   CGFloat((fromHex & 0xFF0000) >> 16) / 0xFF
        let green = CGFloat((fromHex & 0x00FF00) >> 8) / 0xFF
        let blue =  CGFloat(fromHex & 0x0000FF) / 0xFF
        

        let alpha = CGFloat(1.0)
        
        return UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
    
    class func rgbColor(red: Int , green : Int , blue : Int)-> UIColor
    {
        let red =   CGFloat(red) / 0xFF
        let green = CGFloat(green) / 0xFF
        let blue =  CGFloat(blue) / 0xFF
        
        let alpha = CGFloat(1.0)
        
        return UIColor(red: red, green: green, blue: blue, alpha: alpha)

    }

}
