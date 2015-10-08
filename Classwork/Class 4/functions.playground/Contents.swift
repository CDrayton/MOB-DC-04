//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var name: String?

name = "tedi"
var x = 5
var y = 10
x + y

//keep functions kiss (keep it stupid simple)

func sayHello() {
//Make your funtion name have meaning
    print ("hello world")
    print ("Running")
}

sayHello()

//pass parameter into function
func sayHelloName(name: String) {
    print("hello \(name)")
}

//sayHelloName("Tedi")
sayHelloName("tedi")

//Pass multiple parameters to function
func sayHelloNameandLastName(firstName: String, lastName:String, age: Int) {
    print("Your first name is \(firstName)")
    print("Your last name is \(lastName)")
    print("You are \(age) years old")
}


sayHelloNameandLastName("Caeden",lastName: "Drayton", age: 33)



//Function FUnction tht prints out the area of a square rectange
//Function shoudl print "The area is ..


func getArea(width: Double, height: Double) -> Double
    //-> this defines what the type it is
    {
        let area: Double = width * height
        //print("the area is \(area)")
        return area //ensures it is returned as a double
        
}

//squareFunction(25, height: 25)



func displayArea(area: Int) {
    print("The area is \(area)")
}

var mySquare = getArea(25, height: 25)
var myRectangle = getArea(25, height: 55)


//func