//
//  CardGame.swift
//  Assessment 3
//
//  Created by Tedi Konda on 1/23/15.
//  Copyright (c) 2015 Tedi Konda. All rights reserved.
//

import Foundation
protocol BlackJack {
    // Require a deal method
    // Require a first hand method
    func deal()
    func firstHand()
}

class CardGame: BlackJack {
    
    var newArray1 : [Int] = []
    var newArray2 : [Int] = []
    var newCardValue: Int
    var newCard: Int
    
    func deal() {
        
        cardArray.count
        var newCard = min + Int(arc4random_uniform(UInt32(max - min + 1)))
/*var newCardValue = cardArray[newCard]
newArray1.append(newCardValue)

cardArray.removeAtIndex(newCard)
self.p1Score.text = String(newCardValue*/


    }

    func firstHand() {
        var newCardValue = cardArray[newCard]
        newArray1.append(newCardValue)
        cardArray.removeAtIndex(newCard)
        self.p1Score.text = String(newCardValue)
        
        var newCard2 = min + Int(arc4random_uniform(UInt32(max - min + 1)))
        var newCardValue2 = cardArray[newCard2]
        newArray2.append(newCardValue2)
        cardArray.removeAtIndex(newCard2)
        self.p2Score.text = String(newCardValue2)
        return newCard2
        
    }
}