//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var name: String?

let age = 45

name = "tedi"
age

if name != nil {
    print("your name is \(name!)")
}
    else{
    print("I don't know your name yet!")
}

//Tedi's perference
if name == nil {
    print("I don't know your name yet!")
}
else {
    print("your name is \(name!)")
    
}

if let myname = name {
    print("your name is \(name!)")
    //ask Tedi about the bang concept for this - his did not have it

    
/* Three ways of optionals,  1. bang (!) at the end
    2. check if the value is nil or not and then use the bang to unwrap and 3. setting the temporary varaiable to temporarilty change the value (in that block) for that block */

print("your name is \(name)")
}