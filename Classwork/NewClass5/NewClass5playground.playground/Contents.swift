//: Playground - noun: a place where people can play
/*
import UIKit

var str = "Hello, playground"
*/


//: Playground - noun: a place where people can play

import UIKit


//First best practice start the class in Uppercase
//Second best practice every class should have its own swift file
class Car {
    // Another best practice is class properties should always be defined at the top
    var doors: Int
    var engine: String
    var speed: Float
    var used: Bool
    var wheels: Int
    var milesDriven: Float
    var operational: Bool
    
    ///Initializer: what the user inputs when creatin an instance of the class, and/or setting the class defaults
    //To set default values for iniliatized parameters, ou can set them with the eqal sign in the iniliatizer
    
    init(doors: Int, engine: String, speed: Float, used: Bool, wheels: Int, milesDriven: Float = 0, operational: Bool = true) {
        //self.doors references the doors variable at the top of the class and the door reference the user input doors parameter
        //Initializes expects user input
        
        self.doors = doors
        self.engine = engine
        self.speed = speed
        self.used = used
        self.wheels = wheels
        self.milesDriven = milesDriven
        self.operational = operational
        
        self.drive(50)
    }
    
    
    func upGradeSpeed(newSpeed: Float) {
        self.speed = newSpeed
        print("Your car's speed has been upgraded to \(newSpeed) mph")
    }
    
    func drive(distance: Float){
        self.milesDriven += distance
        if self.operational == true {
            self.milesDriven += distance
        }
        
    }
    
    
    func flatTire() {
        self.operational = false
    }
    
    func carStatus() -> String {
        let operationalStatement = self.operational ? "" : "not"
        return "Your car is \(operationalStatement) operational and has driven \(self.milesDriven) miles"
    }
    
}

//Subclasses - a subclass inherits from a class through the : (Subclass: Superclass)

class Lamborghini: Car{
    var turboMode: Bool
    
    init(turboMode: Bool = false, wheels: Int) {
        self.turboMode = turboMode
        super.init(doors: 4, engine: "8 Cycliners", speed: 400, used: true, wheels: 4)
    }
}


var diablo = Lamborghini(turboMode: true, wheels: 4)
diablo.engine
diablo.wheels

//can use constants if do not plan on changing

var tedisCar = Car(doors: 4, engine: "6 Cylinders", speed: 500, used: true, wheels: 4)

tedisCar.upGradeSpeed(600)
tedisCar.speed

// var tedisStatus = tedisCar.carStatus()

tedisCar.speed  //Gives the value
tedisCar.speed = 500  //resets the value


tedisCar.upGradeSpeed(600)

tedisCar.milesDriven
tedisCar.drive(500)
tedisCar.milesDriven

tedisCar.drive(100)
tedisCar.milesDriven



var CaedensCar = Car(doors: 4, engine: "8 Cylinder", speed: 400, used: false, wheels: 4)

var tedisCarStatus = tedisCar.carStatus()


//objects are instances of a class
//classes are blueprints
//every time we declare a new thing, it is an object of the class
//methods are just the function



//arrays

//var myFirstArray: [Int] = [2, 5, 10, 15]
var myFirstArray: Array = [2, 5, 10, 15]
myFirstArray.count
myFirstArray.append(25)

var myEmptyArray: [String] = []
myFirstArray[4]

//Use for loop to go through the array

for i in myEmptyArray{
    print("Current value is \(i)")
}

for i in myEmptyArray{
    print("Current value is \(i)")
}
