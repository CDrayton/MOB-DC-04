//
//  Colorwheel.swift
//  FactGenerator
//
//  Created by newww on 10/14/15.
//  Copyright © 2015 CaedenBurch. All rights reserved.
//

import Foundation
import UIKit
//import UIColor()
  /*  red:1.0,
    green:0.0,
    blue:0.0,
    alpha:1.0)*/

struct colorWheel {
    
  
    var colorArray = [
        UIColor(red:0.0, green:1.0, blue:0.0, alpha:1.0), //lets you set the shade
        UIColor.greenColor(), //lets you return the color with some control
        UIColor.yellowColor(),
        UIColor.blueColor(),
        UIColor.blackColor(),
        UIColor.purpleColor(),
        UIColor.orangeColor()
    ]
    
 //let myRedColor =
    func randomColor() -> UIColor {
        
        let arrayCount = UInt32(colorArray.count)
        let randomNum = Int(arc4random_uniform(arrayCount))
        //Self type cast the strings into Integer for the array to access
        
        return self.colorArray[randomNum]
        
    }
    
    
}
