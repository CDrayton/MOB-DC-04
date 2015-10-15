//
//  ViewController.swift
//  FactGenerator
//
//  Created by newww on 10/14/15.
//  Copyright © 2015 CaedenBurch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gButton: UIButton!
    @IBOutlet weak var factLabel: UILabel!
    
    var myFactBook = Factbook()
    var myColorWheel = colorWheel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.factLabel.text = "You have not yet generated a random text"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    @IBAction func generateFact(sender: AnyObject) {
        self.factLabel.text = self.myFactBook.randomFact()
       
        let randomColor = self.myColorWheel.randomColor()
        self.view.backgroundColor = randomColor  //access the entire view itself
        
         self.gButton.setTitleColor(randomColor, forState: UIControlState.Normal)
       // self.gButton.setTitleColor(randomColor, forState: <#T##UIControlState#>.Normal)
    }
}
   






