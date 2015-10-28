//
//  ViewController.swift
//  Assessment 3
//
//  Created by Tedi Konda on 1/22/15.
//  Copyright (c) 2015 Tedi Konda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // BlackJack game: Create a a game of Blackjack
    // ************* Baseline requirements:
    // ** Set up Player class and CardGame class in their respective provided files. Follow the protocol rules for the CardGame class.
    // When card game first starts, a new player is generated and handed out 2 cards (between 1 and 11). Hint: generate 2 random numbers and add them together
    // A value for the CPU is also generated between 12 and 21 (random Int)
    // When the green view is double tapped (tap gesture recognizer), generate a new card (between 1 and 11) for the player, and add it to their score
    // If the total adds up to over 21, change the label text to "Game over, you lose!" and remove the ability for the player to keep tapping for cards
    // If the player wishes to not get dealt any more cards, the player can swipe right to end game (swipe gesture recognizer)
    // When the player ends the game, present the CPU score and present winner determined from compre comparison
    
    // Bonus: Create a button to play a new game.
    // Bonus 2: Player can start with a pool of money (selected through a text field) and make bets for each game (through a text field again). If player reaches <= 0, don't allow them to play any more games.
    // Bonus 3: When handing out cards, display the actual value to the user. If the card is an Ace, let the user select either 1 or 11.
    
    
    @IBOutlet weak var redBox: UIView!
    @IBOutlet weak var p1Score: UILabel!
    @IBOutlet weak var p2Score: UILabel!
    @IBOutlet weak var p1Cards: UILabel!
    @IBOutlet weak var p2Cards: UILabel!
    @IBOutlet weak var winnerLabel: UILabel!
    
    var cardArray: Array = [1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10]
    
  
    
   
    var newArray1 : [Int] = []
    var newArray2 : [Int] = []
    
    func randomInt(min: Int, max: Int) -> Int {
        
        cardArray.count
        var newCard = min + Int(arc4random_uniform(UInt32(max - min + 1)))
        var newCardValue = cardArray[newCard]
        newArray1.append(newCardValue)
        
        cardArray.removeAtIndex(newCard)
        self.p1Score.text = String(newCardValue)
        
        return newCard
    }
    
 

    
    @IBAction func doubleTap(sender: AnyObject) {
        randomInt(0, max: 51)
        
    }

    
    @IBAction func swipeRight(sender: AnyObject) {
    
        func randomInt2(min: Int, max: Int) -> Int {
            
            /*cardArray.count
            var newCard2 = min + Int(arc4random_uniform(UInt32(max - min + 1)))
            var newCardValue2 = cardArray[newCard2]
            newArray2.append(newCardValue2)
            cardArray.removeAtIndex(newCard2)
            self.p2Score.text = String(newCardValue2)
            return newCard2
            */
        }
      
        /*func CompareCards() -> String {
            If newCard <=  21 && newcard2 >= 21
          self.winnerLabel.text = "Player 1 Wins!"
            else if newCard2 <= 21 && newCard > 21{
                self.winnerLabel.text = "Player 2 Wins!"
            } else {
                self.winnerLabel.text = "It's a Tie!"
            }
                
        }*/
        
            
    }
    
        }
    }

  
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    

  
}

    
