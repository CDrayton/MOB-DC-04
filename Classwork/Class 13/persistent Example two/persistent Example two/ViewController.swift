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
    
    @IBOutlet weak var studentInput: UITextField!
    @IBOutlet weak var displayData: UILabel!
    
    @IBOutlet weak var studentDisplayData: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LoadData()
        // Do any additional setup after loading the view, typically from a nib.
        
        let myTodos = NSBundle.mainBundle().pathForResource("Todos", ofType: "plist")
        //this creates a path for the data but doesn't actually return the data itself
        let toDosArray = NSArray(contentsOfFile: myTodos!)
        print(toDosArray!)
        
        
        let myStudents = NSBundle.mainBundle().pathForResource("Students", ofType: "plist")
        let studentsArray = NSArray(contentsOfFile: myStudents!)
        print(studentsArray)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func saveData(sender: AnyObject) {
        var myNewToDo: NSMutableArray?
        var myNewStudents: NSMutableDictionary?
        
        if let path = NSBundle.mainBundle().pathForResource("Todos", ofType: "plist") {
            //all files you have to find the path. the flow is always the same. first find the pat and then load the reference
            myNewToDo = NSMutableArray(contentsOfFile: path)
            myNewToDo?.addObject(userInput.text!)
            //adds to plist
            myNewToDo?.writeToFile(path, atomically: true)
            //saves backup of file - true does that
            LoadData()
            LoadData2()
        }
        if let path = NSBundle.mainBundle().pathForResource("Students", ofType: "plist") {
            myNewStudents = NSMutableDictionary(contentsOfFile: path)
            // myNewStudents?.addObject
            myNewStudents?.setValue(self.studentInput.text!, forKey: <#T##String#>)
            //    myNewStudents?.setValue(self.studentInput.text!, forKey: self.keyField.text!)
            //Tedi's
            myNewStudents.setValue(String<#T##value: AnyObject?##AnyObject?#>, forKey: )
            //  myNewStudents?.setValue(self.lueField.text!, forKey: self.keyField.text!)
            myNewStudents?.w
        }
        
    }
    
    @IBAction func studentSaveData(sender: AnyObject) {
        
        var myDictionary: NSMutableDictionary?
        if let path = NSBundle.mainBundle().pathForResource("Student", ofType: "path")
        myDictionary = N
    }
    
    func LoadData(){
        let myTodos = NSBundle.mainBundle().pathForResource("Todos", ofType: "plist")
        let toDosArray = NSArray(contentsOfFile: myTodos!)
        print(toDosArray!)
        
    }
    
    
    //whenever working with files you always want it optional if you don't know what is going to be returned
    
    func LoadData2(){
        let myStudents = NSBundle.mainBundle().pathForResource("Students", ofType: "plist")
        let studentsArray = NSDictionary(contentsOfFile: myStudents!)
        print(studentsArray)
        
        
    }
}

