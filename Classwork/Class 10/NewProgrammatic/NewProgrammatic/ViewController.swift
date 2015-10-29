//
//  ViewController.swift
//  NewProgrammatic
//
//  Created by newww on 10/28/15.
//  Copyright © 2015 CaedenBurch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    let yellowBox = UIView()
    let leftEye = UIView()
    let rightEye = UIView()
    let smile = UIView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        yellowBox.frame = CGRectMake(100, 100, 100, 100)
        yellowBox.backgroundColor = UIColor.yellowColor()
        self.view.addSubview(yellowBox)
        
/*yellowBox.frame = CGRectMake(10, 10, 100, 100)
yellowBox.backgroundColor = UIColor.yellowColor()
self.view.addSubview(yellowBox)*/
        
        leftEye.frame = CGRectMake(15, 15, self.yellowBox.frame.width / 5, self.yellowBox.frame.height / 5)
        leftEye.backgroundColor = UIColor.redColor()
        self.yellowBox.addSubview(leftEye)
        
        rightEye.frame = CGRectMake(50, 15, self.yellowBox.frame.width / 5, self.yellowBox.frame.height / 5)
        rightEye.backgroundColor = UIColor.redColor()
        self.yellowBox.addSubview(rightEye)
        
        smile.frame = CGRectMake(20, 50, 50 , 30)
        smile.backgroundColor = UIColor.redColor()
        self.yellowBox.addSubview(smile)
        
/* //redBox.frame = CGRectMake(0, 0, 100, 30)
//redBox.frame = CGRectMake(0, 0, self.yellowBox.frame.width, 30)
//redbox is a child of the yellowbox and calls within the width of the yellowBox

redBox.frame = CGRectMake(0, self.yellowBox.frame.height - 30, self.yellowBox.frame.width, 30)

redBox.backgroundColor = UIColor.redColor()
            self.yellowBox.addSubview(redBox)*/

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func makeSmileLarge(sender: AnyObject) {
        
        self.yellowBox.frame = CGRectMake(0, 0, super.view.frame.width, super.view.frame.height)
        //self.yellowBox.frame = CGRectMake(0, 0, super.view.frame.width, super.view.frame.height)

    }

}

