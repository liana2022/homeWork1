////
////  main.swift
////  Homework10
////
////  Created by Liana Asatryan on 21.05.22.
////
//
//import Foundation
//
//print("Hello, World!")
//
//Home Work 10
//
//Home Work 10_1
//հայտարարել ֆունկցիա որը կնդունի name և phoneNumber արգումենտները և կվերադարձնի String հետևյալ տեսքով`
//“name: Anna, phoneNumber: 077111222”։   name -ի սկզբնական արժեքը երբ այդ արգումենտին արժեք չի փոխանցվում “test”  phoneNumber-ի “077xxxxxx”

func description(name: String = "test", phoneNumber: String = "077xxxxxx") -> String {
    return "name: \(name), phoneNumber: \(phoneNumber)"
}

print(description(name: "Anna", phoneNumber: "077111222"))
print(description())

//Home Work 10_2
//հայտարարել ֆունկցիա որը կնդունի 1-ից ավելի Int արժեքներ և կվերադարձնի այդ թվերի միջին թվաբանականը


func average(numbers: [Int]) -> Double {
    var sum = 0.0
    let count = numbers.count
    if count == 0 {    // stugel vorpeszi 0/0 depq chlini
        return 0
    }
    for index in 0...count - 1 {
        sum += Double(numbers[index])
    }
    return sum/Double(count)
}

print(average(numbers: [1, 4, 5, 8, 9, 78]))


//Home Work 10_3
//հայտարարել ֆունկցիա որը կնդունի 1-ից ավելի String արժեքներ և կվերադարձնի այդ արժեքների առաջին տառերից կազմած տեկստ

func text(words: [String]) -> String {
    var characters = ""
    for word in words {
        let firstChar = word.first
        if firstChar != nil {  // ete datark lini ashxati
            characters += "\(firstChar!)"
        }
    }
    return characters
}

print(text(words: ["Liana", "Barev", "", "vonc es"]))







//Home Work 10_4
//հայտարարել ֆունկցիա որը կնդունի 1-ից ավելի [Int] արժեքներ և կվերադարձնի այդ մասիվների միավորումից ստացված Set-ը

func masiv(values: [[Int]]) -> Set<Int> {
    var result: Set<Int> = []
    
    for value in values {
        result = result.union(value)
    }
    return result
}

print(masiv(values: [[11, 2, 3], [5, 7, 2, 3], [1, 4, 2, 6]]))
//[[11, 2, 3], [5, 7, 2, 3], [1, 4, 2, 6]]


//Home Work 10_5
//հայտարարել ֆունկցիա որը կնդունի variable և variableNewValue Int արժեքները, և ֆունկցիայի կանչի ժամանակ variable արգումենտին փոխանցված փոփխականի արժեքը կփոխի variableNewValue արժեքով։

var variable: Int = 5
var variableNewValue: Int = 7
func change(variable: Int, variableNewValue: inout Int) {
    variableNewValue = variable
}

change(variable: variable, variableNewValue: &variableNewValue)
print(variableNewValue)

//Home Work 10_6
//հայտարարել ֆունկցիա որը կնդունի text և endText String արժեքները, և ֆունկցիայի կանչի ժամանակ text արգումենտին փոխանցված փոփխականի արժեքի վերջից  կավելացնի endText-ը:

var a = "Hello"
var b = "World"
func connect(text: inout String, endText: String) {
    text += endText
}

connect(text: &a, endText: b)
print(a)

//Home Work 10_7
//հայտարարել ֆունկցիա որը կնդունի text և startText String արժեքները, և ֆունկցիայի կանչի ժամանակ text արգումենտին փոխանցված փոփխականի արժեքի վերջից  կավելացնի endText-ը:

var a2 = "Hello"    // skzbic
var b2 = "World"
func connect2(text: inout String, endText: String) {
    
    text = endText + text
    
}

connect2(text: &a2, endText: b2)
print(a2)




//Home Work 10_8
//հայտարարել ֆունկցիա որը կնդունի text և midText String արժեքները, և ֆունկցիայի կանչի ժամանակ text արգումենտին փոխանցված փոփխականի արժեքի մեջտեղից  կավելացնի midText-ը:

var a3 = "Hello"    // skzbic
var b3 = "World"
func connect3(text: inout String, midText: String) {
    
    let at = text.index(text.startIndex, offsetBy: text.count/2)
    text.insert(contentsOf: midText, at: at)
    
}

connect3(text: &a3, midText: b3)
print(a3)

