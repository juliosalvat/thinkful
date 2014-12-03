// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

for _ in 0..<100 {
    let i = arc4random()
}

var favoriteFruit: String = "Strawberry"

var myAge: Int = 34

var yourGpa: Float = 4.1

var youAreCool: Bool = true

var notYear: Int = 2010

var Loser: String = "Justin Beiber"

var Cool: Bool = false

var bodyFat: Float = 35.555


let theYear = 2014

let favoriteAlbum = "La Roux"

let BestAlbum = true

let AlbumRating = 93.82

var sucessMessage = "Thanks for signing up!"

var yes = sucessMessage

var int = 15

var number = int

var rebirth = 40.3

var midLife = rebirth

var message = "Wu Tang!"
println(message)

var MyAge = 34
println(MyAge)

var rating = 9.5
println(rating)


var myAgeToday = 34
var myAgeIn1990 = 10
myAgeToday - myAgeIn1990

var todaysFruitCount: Int = 100
var yesterdaysFruitCount: Int = 5
todaysFruitCount + yesterdaysFruitCount

let numberOfCars: Int = 20
let numberOfCarsCrashed: Float = 5.5
let carsLeft = Float(numberOfCars) - numberOfCarsCrashed



// Comparison
let a = 1
let b = 1

a == b


var bobbyAge = 37
var ciscosAge = 32
var zarahsAge = 25

(bobbyAge + ciscosAge) == zarahsAge
(bobbyAge + ciscosAge) >= zarahsAge
(bobbyAge + ciscosAge) <= zarahsAge

let five: Int = 5
let twentyFivePointFive: Float = 25.5
let totalNumber = Float(five) + twentyFivePointFive

let twetyFour: Int = 24
let ten: Int = 10
let numberTotal = twetyFour + ten

let numberOne: Int = 1342
let numberTwo: Float = 18.8
let dividedNumber = Float(numberOne) / numberTwo

let two = 2
let thirtyFive = 35
let TotalSubNumber = thirtyFive - two


var who = "Let's "
var what = "eat!"
who + what

150 > 2
"hello" == "cat"
//true >= true


// if and else
var carSick = true

if carSick {
    println("Sick ass car!")
} else {
    println("Wack Car !")
}

let cisco = 32
let bobby = 37
let mike = 42
let trevor = 21
let not = 19

let drinkAge = 21

let friendsAllowed = cisco + bobby + mike + trevor

if friendsAllowed >= drinkAge {
   println("Your in!")
} else {
    println("sorry holmes cant come!")
}


let monkeyEatsBananas = true
let horsesEatHay = true
let fishEatpeople = false
let monkeyEatSteak = false

let isRight = monkeyEatsBananas && horsesEatHay
let isWrong = fishEatpeople && monkeyEatSteak

if isRight {
    println("Eat Up")
} else if isWrong {
    println("Gross no!")
} else {
    println("Not avilable")
}


//Arrays
var vowels = ["a", "e", "i", "o", "u"]
var oddNumbers = ["3", "5", "7", "9", "11"]

let constant = ["noChange", "none"]

var visitedPlaces = ["Colombia", "California", "New York", "Georgia", "Alabama"]

var vowelsNumbers = vowels + oddNumbers

vowelsNumbers.append("alphaSymbols")
println(vowelsNumbers)



// Loops


let friendNames = ["Skoolio", "Z", "cisco", "miko"]
for name in friendNames {
    println( " found frined: \(name)")
}

let numbers = [1, 2, 3, 4, 5]

for i in numbers {
    let square = i*i
}

// Create a for in loop that loops through an Array of cities near your hometown.

//let cities = [Oxnard, Camarillo, Moorpark, ThousandOaks, WestleakVillage]
//
//for name in cities {
//    println("number of cities in my area: \(name)")
//}

//Use a for-condition-increment loop to create an array of all the multiples of 3 from 3 - 30.

for var counter = 3; counter < 30; ++counter {
    println(counter)
}

//______________________________________

//Range #1

//let range = 1...10
//
//for count in 1...10 {
//    println("The count is \(count)")
//}

//Range #2

//let range = 1...100
//
//for count in 1...100 {
//    println("All numbers is \(count)")
//}

//______________________________________


//Range #3

// comp check #3 see what the mentor has to say.
//let range = 1...10
//
//for var


//______________________________________

//Switch 

var singleLetters = "9"
switch singleLetters {
    case "B", "C", "D", "F", "G":
        println("\(singleLetters) It's a constant")
    case "A", "E", "I", "O", "U":
        println("\(singleLetters) It's a vowel")
    case "W", "Z", "X":
        println("\(singleLetters) Not sure")
    default:
        println("\(singleLetters)? What's \(singleLetters)?")
    
}


var mystery: Int? = 20

println(mystery)

let winner: String? = "SteveJobs"

println(winner?.uppercaseString)

var dots: Float? = 20.34

println(dots)


//var peeps: Int["5", "10", "15", "20"]?






// unit 2 Lesson 1- Objects In Swift

class CarFactory {
    var color = ""
    var horsepower = 0
    var automaticOption = false
}

var myCar = CarFactory()

myCar.color = "red"
myCar.horsepower = 450
myCar.automaticOption = true

println("myCar has \(myCar.horsepower) horsepower")
//
//func convert(var conversion: Int) {
//    switch conversion {
//     case Int:
//        println(Float)
//    }
//}


func conversion(){
    let numberOfBananas: Int = 3
    let numberOfBananasEaten: Float = 1.5
    let bananasLeft = Float(numberOfBananas) - numberOfBananasEaten
}

println(conversion)


struct Number {
    
    var even = false
    var positive = false
    var prime = false
}

//Create a structure instance
var number5 = Number (even: false, positive: true, prime: true)

//Create another structure instance equal to number2
var number7 = number5

//Checking they hold the same values
number5
number7

//Let's vary one of them
number5.positive = false

//Checking again if they hold the same values
number5
number7

class PersonInformation {
    
    var name: String
    var age: Int
    
    init (aName: String, anAge: Int){
        
        self.name = aName
        self.age = anAge
    }
}

//Use initializer to instantiate with values
var me = PersonInformation(aName: "John", anAge: 40)


//Display the details of the instance "me"
me


//Let's create anothe instance
var you = me


//Display the details of both instances
me
you


//Let's modify one of them
me.name = "Sara"


//Let's redisplay the details of both instances
me
you

number5.even == number7.even    //Will return true
number5.positive == number7.positive   //Will return false


you.name == me.name //Will return true
you.age == you.age //Will return true
you === me //Will return true

for i in 0..<100 {
    i/2
}

var result = 0.0

for i in 0..<100 {
    result = Double(i) / 2.0
    print("\(result), ")
}

var theLink =  NSURL (string: "http://www.thinkful.com")

























