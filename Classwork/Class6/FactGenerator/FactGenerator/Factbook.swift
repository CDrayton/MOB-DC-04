//
//  Factbook.swift
//  FactGenerator
//
//  Created by newww on 10/14/15.
//  Copyright © 2015 CaedenBurch. All rights reserved.
//

import Foundation

struct Factbook {
    
    var factsArray = [
    "People are mammals",
    "The sky is blue",
    "Ants stretch when they wake up in the morning",
    "It's always darkest before it's completely black",
    "One day the sun will explode",
    "E = MCsquared"
    
        
        
    ]
    
    func randomFact() -> String {
        let arrayCount = UInt32(factsArray.count)
        let randomNum = Int(arc4random_uniform(arrayCount))
        //Self type cast the strings into Integer for the array to access
            
        return self.factsArray [randomNum]
    }
}