// Playground - noun: a place where people can play
// Lesson 05

// Complete these, in order, writing code under each TODO statement. Each statement calls for a function to be written, write each of them and then immediately call it after the function definition.

// TODO: Write a function that prints out "Hello world!" 10 times

func sayHelloWorld (){
    print("Hello World")
}

    var i = 0
while i < 10
{
    sayHelloWorld()
    i = i+1
}


// TODO: Write a function that prints out "Hit this line {number of iterations of the loop} times!" 20 times

func printIteration(){
   print("Hit this line  time!")
}

var y = 1
while y < 21 {
    printIteration()
    y = y+1
}


func printIteration2(){
var number = 0
while number <= 19 {
number = number+1
}
print("Hit this line \(number) time!")

}
printIteration2()


// TODO: Write a function that accepts a string as a parameter. Print "Hello {value of string}!"

var name1 = "You"
func sayHello(name: String) {
    print("hello \(name1)")
}

    sayHello(name1)


// TODO: Write a function accepts a string optional. If the string optional exists, print "Hello {value of string}!". If it doesn't, print "Hello world!"

func callOptional(){
    var name2: String?
    
    name2 = "Caeden"
    if let myname = name2 {
        print("Hello \(myname)")
    }
    else {
        print("Hello world!")
    }
}

 callOptional()


// TODO: Write a function that takes one parameter, n, and returns an integer, the nth series in the fibonacci
// sequence. The first fibonacci number is 0, the second is 1, the third is 1, the fourth is 2, fifth is 3, sixth is 5, etc. fibonacci numbers at sequence n are the sum of the n-1 and n-2 fibonacci number.

// TODO: Write a function that calls the above function in order to print the sum of the first 20 fibonacci numbers.

// TODO: Write a function that takes in a number and prints out whether it is prime, composite or neither.

// TODO: Write a function that prints out each of the first 20 fibonacci numbers and whether they are prime. (e.g. 0 is not prime or composite, 1 is prime, etc)

// TODO: Write a function that takes in two numbers, a bill amount and an optional tip percentage (represented as a float, e.g. .2 = 20% tip). Return a tuple with the total bill amount and the tip amount (if included).

func calculateBill(amount1 : Double, amount2 : Double){
    //var amount1 = Double
    //var amount2 = Double
    //let bill: Double = amount1 + amount2
    let tip: Double = amount1 * amount2
    let totalbill: Double = amount1 + tip
    print("The bill is \(amount1) with a tip of \(tip) for a total bill of \(totalbill)")
    
}
 calculateBill(100, amount2: 0.25)


// TODO: Write a function that takes in a string and returns a string that is the reverse of the input. Append two strings using the + operator.


func appendString(){
//let array = ["Caeden", "Tedi", "Burch"]
//let reversed = array.map() { String($0.characters.reverse()) }
//    print (reversed)
    

}
/*let array = ["lizard", "Rhino", "Monkey"]
let reversed = array.map() { String($0.characters.reverse()) }
print(reversed) // [drazil, onihR, yeknoM]*/

appendString()

// BONUS TODO: Write a function that takes in an array of strings and a search term string. Return a boolean indicating whether the search term string exists in the array.

// BONUS TODO: Write a function that accepts a string and returns a boolean indicating whether a string is a palindrome (reads the same backwards or forwards).

// BONUS TODO: Write a function that takes in two strings and returns a boolean indicating whether the two strings are equal

// BONUS TODO: Write a function that accepts two parameters, a string and a function that accepts a string and returns a string. Print the result of passing the string into the function 10 times.
