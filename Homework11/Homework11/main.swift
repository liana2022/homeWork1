////
////  main.swift
////  Homework11
////
////  Created by Liana Asatryan on 27.05.22.
////
//
import Foundation

print("Hello, World!")


//Home Work 11
//
//Home Work 11_1
//հայտարարել ֆունկցոնալ տիպի փոփոխական որը կհղվի func sum(a: Int, b: Int) -> Int ֆունկցիայի վրա։

func sum (a: Int, b: Int) -> Int{
    return a + b
}

var gumar: (Int, Int) -> Int = sum


//Home Work 11_2
//հայտարարել ֆունկցոնալ տիպի փոփոխական որը կպարունակի հետևյալ  closure-ը { (a: Int) -> String in return “\(a)” }

var clourse2 = { (a: Int) -> String in return "\(a)" }



//Home Work 11_3
//հայտարարել ֆունկցիա որը կնդունի որպես արգումենտ ֆունկցիա որը կկանչվի հայտարարած ֆունկցիայի մեջ և կտպի “Hello”
//Փոխանցել որպես արգումենտ արդեն նախապես հայտարարած ֆունկցիա

func hello3(){
    print("Hello")
}

var func3 = hello3

func printHellp3(a: Void){
}
printHellp3(a: func3())

//
//Home Work 11_4
//հայտարարել ֆունկցիա որը կնդունի որպես արգումենտ ֆունկցիա որը կկանչվի հայտարարած ֆունկցիայի մեջ և կտպի “Hello”
//Փոխանցել որպես արգումենտ closure

let closure4 = {
    print("Hello")
}

func printHello4( a: Void ){
   
}
printHello4(a: closure4())

//Home Work 11_5
//հայտարարել մասիվ հետևյալ արժեքներով` 1, 4, -3, -,45, 45
//մասիվի filter() ֆունկցիայի միջոցով ստանալ նոր մասիվ որը կպարունակի հայտարարած մասիվի բացասական թվերը
//օգտագործել ֆունկցիա որպես filter() -ի արգումենտ


func filter5(value: Int) -> Bool {
    return value < 0
}


var array5: [Int] = [1, 4, -3, -45, 45]
var filtredArray5 = array5.filter(filter5)
print(filtredArray5)


//Home Work 11_6
//հայտարարել մասիվ հետևյալ արժեքներով` 1, 4, -3, -,45, 45
//մասիվի filter() ֆունկցիայի միջոցով ստանալ նոր մասիվ որը կպարունակի հայտարարած մասիվի բացասական թվերը
//օգտագործել closure որպես filter() -ի արգումենտ


var filter6 = { (a : Int) -> Bool in
    return a < 0
}

var array6: [Int] = [1, 4, -3, -45, 45]
var filtredArray6 = array6.filter(filter6)
print(filtredArray6)


//Home Work 11_7
//հայտարարել մասիվ հետևյալ արժեքներով` 1, 4, -3, -,45, 45
//մասիվի filter() ֆունկցիայի միջոցով ստանալ նոր մասիվ որը կպարունակի հայտարարած մասիվի ցույգ էլեմենտները
//օգտագործել ֆունկցիա որպես filter() -ի արգումենտ

func filter7(value: Int) -> Bool {
    return value % 2 == 0
}


var array7: [Int] = [1, 4, -3, -45, 45]
var filtredArray7 = array7.filter(filter7)
print(filtredArray7)

//Home Work 11_8
//հայտարարել մասիվ հետևյալ արժեքներով` 1, 4, -3, -,45, 45
//մասիվի filter() ֆունկցիայի միջոցով ստանալ նոր մասիվ որը կպարունակի հայտարարած մասիվի ցույգ էլեմենտները
//օգտագործել closure որպես filter() -ի արգումենտ


var filter8 = { (a : Int) -> Bool in
    return a % 2 == 0
}

var array8: [Int] = [1, 4, -3, -45, 45]
var filtredArray8 = array8.filter(filter8)
print(filtredArray8)


//Home Work 11_9
//հայտարարել մասիվ հետևյալ արժեքներով` 1, 4, -3, -,45, 45
//մասիվի filter() ֆունկցիայի միջոցով ստանալ նոր մասիվ որը կպարունակի հայտարարած մասիվի կենտ էլեմենտները
//օգտագործել ֆունկցիա որպես filter() -ի արգումենտ

func filter9(value: Int) -> Bool {
    return value % 2 != 0
}


var array9: [Int] = [1, 4, -3, -45, 45]
var filtredArray9 = array9.filter(filter9)
print(filtredArray9)

//Home Work 11_10
//հայտարարել մասիվ հետևյալ արժեքներով` 1, 4, -3, -,45, 45
//մասիվի filter() ֆունկցիայի միջոցով ստանալ նոր մասիվ որը կպարունակի հայտարարած մասիվի կենտ էլեմենտները
//օգտագործել closure որպես filter() -ի արգումենտ

var filter10 = { (a : Int) -> Bool in
    return a % 2 != 0
}

var array10: [Int] = [1, 4, -3, -45, 45]
var filtredArray10 = array10.filter(filter10)
print(filtredArray10)


//Home Work 11_11
//հայտարարել մասիվ հետևյալ արժեքներով` “Hello” “GITC” “iOS”
//մասիվի filter() ֆունկցիայի միջոցով ստանալ նոր մասիվ որը կպարունակի հայտարարած մասիվի այն էլեմենտները որոնց
//մեջ կա i տառը։
//
//օգտագործել ֆունկցիա որպես filter() -ի արգումենտ

func filter11(str: String) -> Bool {
    return str.contains("i")
}
var array11 = ["Hello", "GITC", "iOS"]
var filtredArray11 = array11.filter(filter11)
print(filtredArray11)

//Home Work 11_12
//հայտարարել մասիվ հետևյալ արժեքներով` “Hello” “GITC” “iOS”
//մասիվի filter() ֆունկցիայի միջոցով ստանալ նոր մասիվ որը կպարունակի հայտարարած մասիվի այն էլեմենտները որոնց
//մեջ կա i տառը։
//
//օգտագործել closure որպես filter() -ի արգումենտ
//
//


var filter12 = { (a : String) -> Bool in
    return a.contains("i")
}

var array12 = ["Hello", "GITC", "iOS"]
var filtredArray12 = array12.filter(filter12)
print(filtredArray12)



var dd = filtredArray12.filter { item in
    return item.contains("H")
}
print(dd)
