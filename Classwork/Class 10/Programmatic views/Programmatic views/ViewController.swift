//
//  ViewController.swift
//  Programmatic views
//
//  Created by newww on 10/28/15.
//  Copyright © 2015 CaedenBurch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let yellowBox = UIView()
    let redBox = UIView()
    let myTextField = UITextField()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        yellowBox.frame = CGRectMake(10, 10, 100, 100)
        yellowBox.backgroundColor = UIColor.yellowColor()
        self.view.addSubview(yellowBox)
        
        //redBox.frame = CGRectMake(0, 0, 100, 30)
        //redBox.frame = CGRectMake(0, 0, self.yellowBox.frame.width, 30) 
        //redbox is a child of the yellowbox and calls within the width of the yellowBox
        
        redBox.frame = CGRectMake(0, self.yellowBox.frame.height - 30, self.yellowBox.frame.width, 30)
        
        redBox.backgroundColor = UIColor.redColor()
        self.yellowBox.addSubview(redBox)
        
        self.myTextField.frame = CGRectMake(200, 200, 100, 100)
        self.myTextField.backgroundColor = UIColor.greenColor()
        self.myTextField.text = "Hello World"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func moveYellowBox(sender: AnyObject) {
        
        self.yellowBox.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        
    }

    @IBAction func yellowBoxFullScreen(sender: AnyObject) {
        
        UIView.animateWithDuration(1) { () -> Void in
            self.yellowBox.frame = CGRectMake(0, 0, super.view.frame.width, super.view.frame.height)
            //super view refers the parent class
            self.myTextField.frame.origin.y = 300
    }
}
}
