//
//  ViewController.swift
//  People persistence
//
//  Created by newww on 11/16/15.
//  Copyright © 2015 CaedenBurch. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
//reference at the top of the controller allows global access
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var genderField: UITextField!
    @IBOutlet weak var search: UITextField!
    
    var appDelegate = (UIApplication.sharedApplication().delegate as! AppDelegate)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func saveData(sender: AnyObject) {
        let moc = appDelegate.managedObjectContext
        let person = NSEntityDescription.insertNewObjectForEntityForName("Person", inManagedObjectContext: moc) as! Person
        //let person = NSEntityDescription.insertNewObjectForEntityForName("Person", inManagedObjectContext: NSManagedObjectContext)
        
        person.name = nameField.text!
        //to access the text field
        //bang is for the optional
        person.age = Int32(ageField.text!)!
        person.gender = genderField.text!
        
  //      do {
   //         try moc.save()
     //   }
     //   catch _ {
    //        print("Could not save")
            
    //    }
        //bad way to text is 
        //try! moc.save()
        
        
        
        do {
                try moc.save()
               }
               catch _ {
                    print("Could not save")
    }
    }

    @IBAction func loadData(sender: AnyObject) {
        
        let moc = appDelegate.managedObjectContext
        let fetch = NSFetchRequest(entityName: "Person")
        //Remember this - this allows you to be able to pull data
        
        let nameFilter = NSPredicate(format: "name contains %@", self.search.text!)
        let sortByAge = NSSortDescriptor(key: "age", ascending: true)
        
        fetch.sortDescriptors = [sortByAge]
       
        fetch.predicate = nameFilter
        
        //the filter is a prerequister prior to loading the data
     
        
      //  do {
        //    let people: [Person] = try! moc.executeFetchRequest(fetch)
          //  as! Person
           //     print(people)
        //}catch _ {
        //    print("Could not load")
       // }
        
        if let people: [Person] = try! moc.executeFetchRequest(fetch) as? [Person]{
            for person  in people{
                print(person.name)
                print(person.age)
                print(person.gender)
            }
        }
     //   pulling from the data
     //   print(people)
    }
}

