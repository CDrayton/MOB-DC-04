//
//  ViewController.swift
//  ClassesLessonProblems
//
//  Created by Tedi Konda on 9/12/15.
//  Copyright © 2015 Tedi Konda. All rights reserved.
//


// Functions of use for this exercise:
// Translating a string to an integer: "1".toInt()
// Getting the text from a text field: let text = textFieldName.text
// Setting the text on a text label or text field: textLabelName.text = "some text"

// TO DO: Create a player class (hint: player file already created) that has properties for name, and optionally one or more of the following: age, gender, weight, and height.

// TO DO: Create four text fields in interface builder. Each player has a text field for name and one of the other properties.

// TO DO: Create a button in interface builder and tie it to an IB action. The action matches player 1 vs player 2 and decides a winner based on one of the characteristics/properties mentioned above. You set your own rule.

// TO DO: Display the result of the match in a label. Every time the user taps the match button, a new result is generated. - Yes

// BONUS 1: Change the background color of the canvas for every match randomly (hint, have an array of UI Colors, and randomly pick color from that array). - Yes

// Bonus 2: Have all the game logic in an additional Game class (additional to player class).

// Bonus 3: Select winner based on multiple properties.


import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cButton: UILabel!
    @IBOutlet weak var name1: UITextField!
    @IBOutlet weak var name2: UITextField!
    @IBOutlet weak var age1: UITextField!
    @IBOutlet weak var age2: UITextField!
    
    
    @IBOutlet weak var rWinner: UILabel!
    
    var myColorWheel = colorWheel()
    
    var a: Int = 0
    var b: Int = 0
    
    
    
    /*class PlayerGame{
        var player1 = Player("Mike", age : 33,  gender : "Male", weight: 175, height: 6)
        var player2 = Player("John", age : 25,  gender : "Male", weight: 193, height: 6)
    }*/

    
   /* func toInt() -> Int?
    {
        var someNumb1 = age1.toInt()
        var someNumb2 = age2
        var newNum1 = someNumb1.
    }*/
    
    
    
    @IBAction func cButton(sender: AnyObject) {
        
        /*var numone = age1.
        var numtwo = age2.textInputMode
        */
        /*var someNumb1 = age1
        var someNumb2 = age2
        var newNum1 = someNumb1. */
      //  someNumb: Int? = age1.toInt()
       // Int(UITextField.text!)
        //let myString: String = age1
        //let myInt1: Int
        
        
       // var newage1 = Int(age1.text!)
      //  var newage2 = Int(age2.text!)
    
       
        
        //check if all the text fields are not empty
        if (self.name1.text != "" && self.name2.text != "")
        {
          /*
            @IBAction func firstNumber(age1: UITextField) {
                var firstNum = firstNum.text.toInt()
            }

            @IBAction func firstNumber(age2: UITextField) {
                var firstNum = firstNum.text.toInt()
            }
*/
           //let guess1:Int? = Int(age1.text!)
           // let guess2:Int? = Int(age2.text!)
            
            //make 2 instances of the Player structs for players 1 and 2
            var player1 = Player(name: self.name1.text!, age: 50, gender: "", weight: 0, height:0)
            var player2 = Player(name: self.name2.text!,  age: 27, gender: "", weight: 0, height: 0)
           
            //check who won
            if(player1.age > player2.age)
            {
                
                self.cButton.text = self.name1.text
                 a = a + 1
            }
            else {
                self.cButton.text = self.name2.text
                b = b + 1
            }
   
         
        }
        
        let randomColor = self.myColorWheel.randomColor()
        self.view.backgroundColor = randomColor
        

    }
    
    
    @IBAction func clearButton(sender: AnyObject) {
    
        name1.text = ""
        name2.text = ""
        age1.text = ""
        age2.text = ""
        
        let randomColor = self.myColorWheel.randomColor()
        self.view.backgroundColor = randomColor
    }
    
    
/*    @IBAction func rWinner(sender: AnyObject) {
   
        var i = 0
        
        while i >= 3
        {
            if a >= 2 {
                 self.rWinner.text = self.name1.text
                
            } else {
                 self.rWinner.text = self.name2.text
                
            }
            
            
        }
    }*/

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
    }


}


