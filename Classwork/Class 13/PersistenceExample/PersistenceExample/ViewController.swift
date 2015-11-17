//
//  ViewController.swift
//  PersistenceExample
//
//  Created by newww on 11/9/15.
//  Copyright © 2015 CaedenBurch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userInput: UITextField!

    @IBOutlet weak var displayData: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        LoadData()
        // Do any additional setup after loading the view, typically from a nib.
        
        let myTodos = NSBundle.mainBundle().pathForResource("Todos", ofType: "plist")
        //this creates a path for the data but doesn't actually return the data itself
        let toDosArray = NSArray(contentsOfFile: myTodos!)
        print(toDosArray!)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func saveData(sender: AnyObject) {
        var myNewToDo: NSMutableArray?
        
        if let path = NSBundle.mainBundle().pathForResource("Todos", ofType: "plist") {
            //all files you have to find the path. the flow is always the same. first find the pat and then load the reference
            myNewToDo = NSMutableArray(contentsOfFile: path)
            myNewToDo?.addObject(userInput.text!)
            //adds to plist
            myNewToDo?.writeToFile(path, atomically: true)
            //saves backup of file - true does that
            LoadData()
        }
        
    }
    func LoadData(){
        let myTodos = NSBundle.mainBundle().pathForResource("Todos", ofType: "plist")
        let toDosArray = NSArray(contentsOfFile: myTodos!)
        print(toDosArray!)
        
    }
}

