//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


protocol Bird {
    var name: String { get }
    var beak: Bool { get }
    var feather: Bool { get }
}



protocol CanFly {
    var wings: Bool { get }
    
}

//Class, structures, Protocals should always be capitalized



extension Bird where Self: CanFly {
var beal: Bool { return true }

}

struct Dodo: Bird, CanFly {
    var name: String
    var feather: Bool = true
    
}

var bobbird =