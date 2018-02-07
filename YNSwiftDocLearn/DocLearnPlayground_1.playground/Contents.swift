//: Playground - noun: a place where people can play

import UIKit
/// Base
var str = "Hello, playground"

var myVariable = 42

myVariable = 50

let myConstant = 30

let explicitDouble: Double = 70

let label = "The width is "
let width = 94
let labelWith = label + String(width)

let apples = 3
let oranges = 5
let appleSummary = "I have \(apples)."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

var shoppingList = ["a", "b", "c", "d"]
shoppingList[1] = "bb"
shoppingList

var occupations = ["a" : "aa", "b" : "bb"]
occupations["a"] = "aaa"
occupations
/// 置空
shoppingList = []
occupations = [:]

let emptyArra = [String]()
let emptyDictionary = [String: Float]()

/// Control Flow
let indiviualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in indiviualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
teamScore

var optionalString: String? = "Hello"
//print(optionalString == nil)

var optionName:String? = "John"
var greeting = "Hello!"
if let name = optionName {
    greeting = "Hello, \(name)"
}

let nickName: String? = nil
let fullName: String = "John"
let informalGreeting = "Hi \(nickName ?? fullName)"

let vegetable = "red pepper"
switch vegetable {
case "a":
    print("a")
case "b":
    print("b")
case "c":
    print("c")
case "d":
    print("d")
default:
     "default"
}

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
for (key, value) in interestingNumbers {
    for number in value {
        if number > largest {
            largest = number
        }
    }
}
largest

var n = 2
while n < 100 {
    n *= 2
}
n

var m = 2
repeat {
    m *= 2
} while m < 100
m

var total = 0
for i in 0 ..< 4 {
    total += i
}
total

/// Founctions and Closures
func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)"
}
greet(person: "Bob", day: "Tuesday")

func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)"
}
greet("YN", on: "26")

/// 元组返回
func getTuple() -> (a: Int, b: Int) {
    return (1, 2)
}
let getT = getTuple()
getT.a

func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()

func makeIncrementer(_ a: Int) -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number + a
    }
    return addOne
}
var increment = makeIncrementer(3)
increment(7)


func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTem(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 20, 10]
hasAnyMatches(list: numbers, condition: lessThanTem)




























































