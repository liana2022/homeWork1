//
//  main.swift
//  HomeWork2
//
//  Created by Liana Asatryan on 23.04.22.
//

import Foundation

print("Hello, World!")


var a1 = 5
var b1 = 145
var c1 = -1234.33
var d1 = false
a1 = -a1
b1 = -b1
c1 = -c1
d1 = !d1

print("a1 = \(a1), b1 = \(b1), c1 = \(c1), d1 = \(d1)")

//Homework 2

let isTen2 = false
let a2 = isTen2 ? 10 : 45
print("a2 = \(a2)")

//Homework 3

let isGirl3 = false
let person3 = isGirl3 ? "is Girl" : "is Boy"
print("person3 = \(person3)")

//Homework 4

let a4 = 35.7
let b4 = 47.67
let max4 = a4 > b4 ? a4 : b4
print("max4 = \(max4)")


//Homework 5

let a5 = 35.7
let b5 = 47.67
let min5 = a5 < b5 ? a5 : b5
print("min5 = \(min5)")

//Homework 6

let a6 = 3
let b6 = 1096
let c6 = -36
let max6 = a6 > b6 ? ( a6 > c6 ? a6 : c6) : (b6 > c6 ? b6 : c6)
print(max6)

//Homework 7

let a7 = 3
let b7 = 1096
let c7 = -36
let min7 = a7 < b7 ? (a7 <  c7 ? a7 : c7) : (b7 < c7 ? b7 : c7)
print(min7)

//Homework 8

let str8 = ""
print(str8.isEmpty)

//Homework 9

let str9 = "Hello"
print(str9.count)

//Homework 11

var str11 = "Hello"
str11.append("GITC")
print(str11)

//Homework 12

let str12 = "Hello"
print(str12[str12.startIndex])

//HomeWork 13
let str13 = "Hello"
let index13 = str13.index(before: str13.endIndex)
print(str13[index13])

//Homework 14

let str14 = "Hello"
let index14 = str14.index(str14 .startIndex, offsetBy: str14.count/2)
print("str14 = \(str14[index14])")

//Homework 15

var str15 = "Hello"
str15.insert(")", at: str15.startIndex)
print(str15)

// Homework 16

var str16 = "Hello"
let index16 = str16.index(after: str16.startIndex)
str16.insert("-", at: index16)
print(str16)

//Homework 17

var str17 = "hello"
let index17 = str17.index(after: str17.startIndex)
str17.insert(contentsOf: "—Error—", at: index17)
print(str17)

//Homework 18

var str18 = "Hello"
str18.remove(at: str18.startIndex)
print(str18)

//Homework 19

var str19 = "hello"
let index19 = str19.index(before: str19.endIndex)
str19.remove(at: index19)
print(str19)

//Homework 20

var str20 = "Hello"
let index20 = str20.index(str20.startIndex, offsetBy: str20.count/2)
str20.remove(at: index20)
print(str20)

