//
//  ViewController.swift
//  Lesson7SelfClasswork
//
//  Created by newww on 10/19/15.
//  Copyright © 2015 CaedenBurch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var permissioinField: UITextField!
    
    @IBOutlet weak var coloredBox: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
  

   @IBAction func changeViewBackgroundColor(sender: AnyObject) {
        
        UIView.animateWithDuration(1) { () -> Void in
        
        self.coloredBox.backgroundColor = UIColor.redColor()
        self.coloredBox.frame = CGRect(x: 10, y:10, width: 100, height: 100)
        self.view.backgroundColor = UIColor.blueColor()
    }
        //CGRect would be a function we would have to create ourselves.
        
        //Makes changes in the UIView.animateWithDuration. Low hanging fruit.
    
    if self.permissioinField.text == "yes" {
        self.performSegueWithIdentifier("popUpSecondViewSeque", sender: sender)
    }
    }


    
    @IBAction func swipeRight(sender: AnyObject) {
         self.coloredBox.backgroundColor = UIColor.yellowColor()
    }
    @IBAction func swipeLeft(sender: AnyObject) {
         self.view.backgroundColor = UIColor.greenColor()
    }
    /*@IBAction func swipeRight(sender: AnyObject) {
        self.coloredBox.backgroundColor = UIColor.yellowColor()
    }

    @IBAction func swipeLeft(sender: AnyObject) {
        self.view.backgroundColor = UIColor.greenColor()
        
    }
    
    @IBAction func mainSwiipeRight(sender: AnyObject) {
        print("testing")
    }*/
    
    
}

