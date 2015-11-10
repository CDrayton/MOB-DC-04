//
//  ViewController.swift
//  persistence
//
//  Created by newww on 11/4/15.
//  Copyright © 2015 CaedenBurch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var helloWorld: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
      //  NSUserDefaults.standardUserDefaults().setObject("light", forKey: "theme")
        
        let currentTheme = NSUserDefaults.standardUserDefaults().objectForKey("theme")
        
        
        
        //var currentTheme = NSUserDefaults.standardUserDefaults().objectForKey("theme")
        
        self.helloWorld.text = String(currentTheme)
     
        //as! typecasts
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func changeViewToDark(){
        self.view.backgroundColor = UIColor.blackColor()
        self.helloWorld.textColor = UIColor.blackColor()
        
    }
    func changeViewtoLight(){
        self.view.backgroundColor = UIColor.whiteColor()
        self.helloWorld.textColor = UIColor.whiteColor()
        
    }
    
    
    @IBAction func changeToLightTheme(sender: AnyObject) {
        NSUserDefaults.standardUserDefaults().setObject("light", forKey: "theme")
        changeViewtoLight()
    }

    @IBAction func changeToDarkTheme(sender: AnyObject) {
        NSUserDefaults.standardUserDefaults().setObject("dark", forKey: "theme")
        changeViewToDark()
    }
}

