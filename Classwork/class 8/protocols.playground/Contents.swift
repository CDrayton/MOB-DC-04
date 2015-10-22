//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


protocol Animal {
    var name: String { get }
    //for protocals when we set a name we have to give persmission for giving and sending something
    
    //get means you can mutate the value such as "5" ...its lets you add an additional value when you set or get a value
    //set  variables in swift
    
    //set lets you write to it
    //get lets you read from it
    
    var fur: Bool { get }
    func makeNoise() -> String
}

protocol Hunter {
    var vegeterian: Bool { get }
    var hasClaws: Bool { get }
}
//can go about extending protocl by

extension Animal where Self: Hunter {
    var hasClaws: Bool { return true }
    var vegeterian: Bool {return false}
    func makeNoise()->String { return "RAAARWR"}
}

struct Tiger: Animal, Hunter {
//Tiger is both and inherits from both protocols
    var name: String
    var fur: Bool = true
    //var vegeterian: Bool = false
    //var hasClaws: Bool = true
    
}

//var simba = Tiger(name: "Simba", fur: true, vegeterian: false, hasClaws: true)
var simba = Tiger(name: "Simba", fur: true)

simba.vegeterian
simba.hasClaws
simba.makeNoise()