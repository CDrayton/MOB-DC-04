//
//  ViewController.swift
//  Programmatic Body
//
//  Created by newww on 11/2/15.
//  Copyright © 2015 CaedenBurch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    let bodyTopPos = NSLayoutConstraint(
        item: self.body,
        attribute: NSLayoutAttribute.Top
        relatedBy: NSLayoutRelation.Equal
        toItem: self.head
        attribute:NSLayoutAttribute.Bottom
        multipler: 1
        constant: 0
    )
    
    
    let leftArmLeading = NSLayoutConstraint(
        item: self.leftArm.
        attribute: NSLayoutAttribute.Trailing
        relatedBy: NSLayoutRelation.Equal,
        toItem: self.body,
        attribute: NSLayoutAttribute.Leading
        multiplier: 1, //Multipler shows the amount of screen the left arm will take no matter the size of the screen
        constant: 20)
    )

    
    //If one leg has a trailing constraing, the other leg needs to have a leading constraint

    let leftArmTopPos = NSLayoutConstraint(
        item: self.leftArm.
        attribute: NSLayoutAttribute.Top
        relatedBy: NSLayoutRelation.Equal,
        toItem: self.head,
        attribute: NSLayoutAttribute.Bottom
        multiplier: 1,
        constant: 0)
        attribute: NSLayoutAttribute.Width
    )
    
    self.view.viewConstraints(bodyWidth, BodyTopPost)
    
    
    
    A
    
    self.body.translatesAutoresizingMaskIntoConstraints = true
    

}

