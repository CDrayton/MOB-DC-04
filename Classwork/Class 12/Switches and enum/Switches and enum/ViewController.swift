//
//  ViewController.swift
//  Switches and enum
//
//  Created by newww on 11/4/15.
//  Copyright © 2015 CaedenBurch. All rights reserved.
//

import UIKit

var animal = "dog"


switch animal {
    case "dog", "wolf":
    print("You belong to the canine class")
    case "cat", "tiger":
    print("You belong to the feline class")
case "human":
    print("You belong to the homosapien class")
default:
    print("I don't know what you are")
    
}

enum GACampus {
    case DC
    case NY
    case SF
    case LA
    case HK
    case TX
}

var myCampus = GACampus.DC





class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

