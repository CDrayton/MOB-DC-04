//: Playground - noun: a place where people can play

import UIKit


/* This is a multiline comment*/

//Type String
"this is a string"

//Type integer ...If it doesn't have a decimal it is an integer

5

// Decimal/Fractions are known as Florts and Doubles, Doubles are more precise
5.25
5.11224355


//Type Boolean: true false values
true
false

5+5
25 * 4589758

34.5 * 10

//Modulus operatore, return remainder
10 * 3
9 / 3

// Bang opposite

!true



var str = "Hello, playground"

var num = 5

//This is an interpreted variable (String)
var name = "Caeden"
name = "Ena"

//Interpreted Integer

var loc: String = "General Assembly"
var numberofLife: Int = 42
//this is called camelcasing





//Define constant (constants don't change) with the word let

let neverChanging = 54



print("hello world")

print  ("hello with no new line", terminator: "")

//Concatonation
name = "world"
print("hello \(name)", terminator: "")


//Interpolation
print("example sum \(5+5)")

//Concataion
"hello " + "world"




//Conditional If

var age = 79

if age < 21 {
    print("no alcohol!")
}else if age > 21 && age <  65 {
    print("Yes alchohol!")

}
else {
    print ("Yes alcohol and Discount")
    
    
}



//Loops

//While Loops

var x = 0
while x < 6000 {
 print("running")
 x = x+1

    if x == 5000 {
        break
    }
}
print(x)



//For Loops

var y = 0
x = 5
for o in y..<x {
    print("We're counting \(o)")
}

