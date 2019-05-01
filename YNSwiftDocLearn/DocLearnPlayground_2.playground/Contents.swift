//: Playground - noun: a place where people can play

import UIKit

typealias AudioSample = UInt16
/// 字符串
let greeting = "Guten Tag!"
greeting[greeting.startIndex]
greeting[greeting.index(before: greeting.endIndex)]
greeting[greeting.index(after: greeting.startIndex)]
let index = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index]

for index in greeting.indices {
    print("\(greeting[index])")
}

var welcome = "hello"
welcome.insert("!", at: welcome.endIndex)


