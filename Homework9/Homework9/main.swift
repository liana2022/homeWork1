import Security
////
////  main.swift
////  Homework9
////
////  Created by Liana Asatryan on 20.05.22.
////
//
//import Foundation
//
//print("Hello, World!")
//
//Home Work 9

//Home Work 9_1
//հայտարարել ֆունկցիա որը կհաշվի և կվերադրձնի 2 Int թվերի գումարը։
//հայտարարել ֆունկցիա որը կհաշվի և կվերադրձնի 2 Double թվերի գումարը։
//հայտարարել ֆունկցիա որը կհաշվի և կվերադրձնի 2 Float թվերի գումարը։


func sum1(value1:Int, value2:Int) -> Int {
    let result = value1 + value2
    return result
}

let result1 = sum1(value1: 5, value2: 10)

print(result1)

func sum2(value2:Double, value3:Double) -> Double {
    let result2 = value2 + value3
    return result2
}


let result2 = sum2(value2: 2.5, value3: 9.8)
print(result2)


func gumar(tiv1:Float, tiv2:Float) -> Float {
    let ardyunq = tiv2 + tiv2
    return ardyunq
}

let ardyunq1 = gumar(tiv1: 6.7, tiv2: 7.9)

print("ardyunq1 = \(ardyunq1)")

//Home Work 9_2
//հայտարարել ֆունկցիա որը կհաշվի և կվերադրձնի 2 Int թվերի տարբերությունը։
//հայտարարել ֆունկցիա որը կհաշվի և կվերադրձնի 2 Double թվերի տարբերությունը։
//հայտարարել ֆունկցիա որը կհաշվի և կվերադրձնի 2 Float թվերի տարբերությունը։


func difference(a:Int, b:Int) -> Int {
    let result = a - b
    return result
}

let result = difference(a: 7, b: 4)
print("result = \(result)")

func diff(c:Double, d:Double) -> Double {
    let res = c - d
    return res
}
let res1 = diff(c: 24, d: 76)

print("res1 = \(res1)")


func differen(first: Float, second: Float) -> Float {
    let result = first - second
    return result
}

let result3 = differen(first: 67.8, second: 23.9)
print("result3 = \(result3)")






//Home Work 9_3
//հայտարարել ֆունկցիա որը կհաշվի և կվերադրձնի 2 Int թվերի արտադրյալը։
//հայտարարել ֆունկցիա որը կհաշվի և կվերադրձնի 2 Double թվերի արտադրյալը։
//հայտարարել ֆունկցիա որը կհաշվի և կվերադրձնի 2 Float թվերի արտադրյալը։

func multiply(num: Int, num1: Int) -> Int {
    let result = num * num1
    return result
}

let result5 = multiply(num: 89, num1: 24)
print("result5 = \(result5)")


func multiplyTwoNumbers(num2: Double, num3: Double) -> Double {
    let result = num2 * num3
    return result
}


let ardyunq3 = multiplyTwoNumbers(num2: 34.56, num3: 56.78)
print(ardyunq3)

func multiplyOfTwuNumbers(d: Float, g: Float) -> Float {
    let result = d * g
    return result
}

let result6 = multiplyOfTwuNumbers(d: 78, g: 23)

print(result6)





//Home Work 9_4
//հայտարարել ֆունկցիա որը կհաշվի և կվերադրձնի 2 Int թվերի քանորդը։
//հայտարարել ֆունկցիա որը կհաշվի և կվերադրձնի 2 Double թվերի քանորդը։
//հայտարարել ֆունկցիա որը կհաշվի և կվերադրձնի 2 Float թվերի քանորդը։



func divided(num: Int, num1: Int) -> Int {
    let result = num / num1
    return result
}

let result7 = divided(num: 80, num1: 20)

print("result7 = \(result7)")


func divideTwoNumbers(num2: Double, num3: Double) -> Double {
    let result = num2 / num3
    return result
}
let result8 = divideTwoNumbers(num2: 60, num3: 30)

print(result8)



func divideOfTwuNumbers(d: Float, g: Float) -> Float {
    let result = d / g
    return result
}
let result9 = divideOfTwuNumbers(d: 98, g: 45)

print("result9 = \(result9)")




//Home Work 9_5
//հայտարարել ֆունկցիա որը կվերադաձնի Int թվերի քառակուսին։


func sqrt(tiv3: Int) -> Int {
    
     let result = tiv3 * tiv3
    
    return result
}

let result4 = sqrt(tiv3: 16)

print(result4)



//Home Work 9_6
//հայտարարել ֆունկցիա որը որպես արգումենտ ունի [String] մասիվ և կվերադաձնի String որի տեքստային արժեքը կլինի այդ մասիվում գտնվող էլեմենտները ըստ մասիվում դասակարգված հաճորտականությամբ և կառանձնանան միմյանցից & սինվոլով։
//օրինակ եթե ֆունկցիան ընդունի հետևյալ  [“Hello”, “GITC”, “IOS”] մասիվը որպես արգումենտ ապա պետք է վերադաձնի “Hello&GITC&IOS”

func concut(array: [String]) -> String {
    var result = ""
    
    for element in array {
        result += element
        result += "&"
    }
    if !result.isEmpty{
        
        result.remove(at: result.index(before: result.endIndex))
    }
    
    return result
}

print(concut(array: ["Hello", "GITC", "IOS"]))


//Home Work 9_7
//հայտարարել ֆունկցիա որը կընդունի Int թիվ և կվերադաձնի այդ թվի ֆակտորյալը։

func factorial(x:Int) -> Int {
    var result = 1

    if x < 2 {
        return result
    }
    for value in 2...x {
        result *= value
    }
    return result
}

print(factorial(x: 5))

//Home Work 9_8
//հայտարարել ֆունկցիա որը կնդունի ուղղանկյուն եռանկյան էջերի արժեքը և կվերադաձնի այդ ուղանկյուն եռանկայն ներքնաձիկը։
//օգտագործել
//Պյութագորասի թեորեմի, sqrt() և Ձեր գրած քառակուսի հանելու փունկցիան



func rectangularPage(length1: Double, length2: Double) -> Double {
    
    let nerqnadzig = sqrt(length1 * length1 + length2 * length2)
    
    return nerqnadzig
}

let nerqnadzig = rectangularPage(length1: 3, length2: 4)

print("nerqnadzig = \(nerqnadzig)")
