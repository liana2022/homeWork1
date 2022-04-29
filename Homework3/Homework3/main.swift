//
//  main.swift
//  Homework3
//
//  Created by Liana Asatryan on 29.04.22.
//

import Foundation

print("Hello, World!")

//Homework 1

let a1 = 12
let b1 = -34.55
let hiText1 = "Hello"
let itIsBool1 = true
let all1 = (a1, b1, hiText1, itIsBool1)

//Homework 2

let a2 = 12
let b2 = -34.55
let hiText2 = "Hello"
let itIsBool2 = true
var all2 = (a2, b2, hiText2, itIsBool2)
all2.1 = 12.5125
print(all2)

//Homework 3


let a3 = 12
let b3 = -34.55
let hiText3 = "Hello"
let itIsBool3 = true
var all3 = (a3, b3, hiText3, itIsBool3)
all3.0 = 2 * a3
print(all3)


//Homework 4


let a4:Float = 12.0
let b4:Float = -34.55
let hiText4 = "Hello"
let itIsBool4 = true
var all4 = (a4, b4, hiText4, itIsBool4)
all4.0 = a4 + b4
print(all4)

//Homework 5

let tuple5: (a5: Double, b5: Double, hiText5: String, itIsBool5: Bool) = (12.55, 34.55, "Hello", true)

print(tuple5)

//Homework 6

let pointOne6: (x: Float, y: Float) = (23, 45)
let pointTwo6: (x: Float, y: Float) = (46, 9)

let distance = sqrt(pow(pointOne6.x - pointTwo6.x, 2) + pow(pointOne6.y - pointTwo6.y, 2))
print(distance)

//Homewor 7

let a7:Int? = 12
let b7:Double? = -34.55
let hiText7:String? = "Hello"
let itIsBool7:Bool? = true

//Homework 8

let a8:Int? = 12
let b8:Double? = -34.55
let hiText8:String? = "Hello"
let itIsBool8:Bool? = true

//let a_8 = a8 ?? 0
//let b_8 = b8 ?? -1
//let hiText_8 = hiText8 ?? "nil"
//let itIsBool_8 = itIsBool8 ?? false

let a_8 = a8 != nil ? a8! : 0
let b_8 = b8 != nil ? b8! : -1
let hiText_8 = hiText8 != nil ? hiText8! : "nil"
let itIsBool_8 = itIsBool8 != nil ? itIsBool8! : false




