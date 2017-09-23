//
//  Helper.swift
//  fundoopay
//
//  Created by BridgeLabz on 02/09/17.
//  Copyright © 2017 Self Emp. All rights reserved.
//

import UIKit

public class Helper: NSObject {
    
    static func GetAttributedText(inputText:String, location:Int,length:Int) -> NSMutableAttributedString {
//        let attributedText = NSMutableAttributedString(string: inputText, attributes: [NSFontAttributeName:UIFont(name: "Merriweather", size: 15.0)!])
//        attributedText.addAttribute(NSForegroundColorAttributeName, value: UIColor(red: 255, green: 128, blue: 0, alpha: 1.0) , range: NSRange(location:location,length:length))
        
        let attributedText = NSMutableAttributedString(string: "your desired text",attributes: [:])
        
        attributedText.addAttribute( NSForegroundColorAttributeName, value: UIColor.blue,range: NSRange(location:location,length:length))
        return attributedText
    }

}
