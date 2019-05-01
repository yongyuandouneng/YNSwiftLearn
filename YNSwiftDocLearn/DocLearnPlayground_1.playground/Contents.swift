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
var numbers = [20, 30, 10]
hasAnyMatches(list: numbers, condition: lessThanTem)


numbers.map { (number: Int) -> Int in
    return number * 3
}

let mapNumbers = numbers.map({ number in 3 * number})
mapNumbers

let sortedNumbers = numbers.sorted { $0 > $1 }
sortedNumbers

/// Objects and Classes
class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

var shape = Shape()
shape.numberOfSides = 33
let shapeDescription = shape.simpleDescription()

class NameSpace {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

class Square: NameSpace {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)"
    }
    
}


let test = Square(sideLength: 5.2, name: "my test square")
test.area()
test.simpleDescription()

class EquilateralTriangle: NameSpace {
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }
    override func simpleDescription() -> String {
        return "An equilateral triangle width sides of length \(sideLength)."
    }
}

var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.sideLength)

class TriangleAndSquare {
    var triangle: EquilateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    
    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
    
}

var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape.")

triangleAndSquare.square.sideLength
triangleAndSquare.triangle.sideLength
triangleAndSquare.square = Square(sideLength: 30, name: "larger square")
triangleAndSquare.square.sideLength

let optionalSquare: Square? = Square(sideLength:2.5, name: "optional square")
let sideLength = optionalSquare?.sideLength


enum Rank: Int {
    case ace = 1
    case two, three
    case jack
    
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        default:
            return String(self.rawValue)
        }
    }
}
let ace = Rank.ace
let aceRawValue = ace.rawValue

if let converedRank = Rank(rawValue: 3) {
    let threeDescription = converedRank.simpleDescription()
    threeDescription
}

enum ServerResonpse {
    case result(String, String)
    case failure(String)
}

let success = ServerResonpse.result("6:00 am", "8:09 pm")
let failure = ServerResonpse.failure("Out of cheese")

switch success {
case let .result(sunrise, sunset):
    print("Sunrise is at \(sunrise) and sunset is at \(sunset)")
case let .failure(message):
    print("Failure.. \(message)")
}

struct Card {
    var rank: Rank
    
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription())"
    }
}
let threeOfSpades2 = Card(rank: .ace)
threeOfSpades2.simpleDescription()

protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust() -> ()
}

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class"
    var anotherProty: Int = 69123
    func adjust(){
        simpleDescription += " Now 100% adjusted."
    }
}

var a = SimpleClass()
a.adjust()
let aDesciption = a.simpleDescription

struct SimpleStructure2: ExampleProtocol {
    var simpleDescription: String = "A simple Structure"
    mutating func adjust() {
        simpleDescription += " (adjusted)."
    }
}
var b = SimpleStructure2()
b.adjust()
let bDescri = b.simpleDescription

extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "The number \(self)"
    }
    mutating func adjust() -> () {
        self += 42
    }
}
print(7.simpleDescription)


let protocolValue: ExampleProtocol = a
print(protocolValue.simpleDescription)


enum PrinterError: Error {
    case outOfPaper
    case noToner
    case onFire
    func send(job: Int, toPrinter printerName: String) throws -> String {
        if printerName == "Never Has Toner" {
            throw PrinterError.noToner
        }
        return "Job send"
    }
}














