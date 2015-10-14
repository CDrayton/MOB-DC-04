//
//  ViewController.swift
//  Class5Project
//
//  Created by newww on 10/12/15.
//  Copyright © 2015 CaedenBurch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    
    @IBAction func mainButton(sender: AnyObject) {
        self.mainLabel.text = "Changed Yo!"
    }
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.mainLabel.text = "Hello World"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

