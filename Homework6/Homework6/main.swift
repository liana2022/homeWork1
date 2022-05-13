//
//  main.swift
//  Homework6
//
//  Created by Liana Asatryan on 13.05.22.
//

import Foundation

print("Hello, World!")

//HomeWork 6 For-in Array Set Dictionary

//Home Work 6_1
//
//հայտարարել Dictionary ՝
//key-ի տիպը String
//value-ի տիպը String
//
//սաբսքրիտ սիտաքսի միջոցով [] ավելացնել հետևյալ արժեքները
//
//key - ում  “1”
//value - ում  1
//
//key - ում  “2”
//value - ում  2
//
//key - ում  “3”
//value - ում  3
//
//For in ցիկլի միջոցով տպեք այդ Dictionary - ում գտնվող արժեքները տպեք
//օրինակ ՝  “1”  1
//
var dic1: [String : Int] = [:]
dic1["1"] = 1
dic1["2"] = 2
dic1["3"] = 3

for (key, value) in dic1 {
    print("“\(key)” \(value)")
}


//Home Work 6_2

//հայտարարել Dictionary ՝
//key-ի տիպը String
//value-ի տիպը (name: String, age: Int) tuple
//updateValue() ֆունկցիայի միջոցով ավելացնել հետևյալ արժեքները
//
//key - ում  “Developer”
//value - ում  name-> “Anna” age-> 19
//
//key - ում  “Project Manager”
//value - ում  name-> “Mariam” age-> 29
//
//For in ցիկլի միջոցով տպեք այդ Dictionary - ում գտնվող արժեքները տպեք
//օրինակ ՝  Project Manager  Mariam 29

var dic2: [String : (name: String, age: Int)] = [:]
dic2["developer"] = ("Anna", 19)

dic2["project Manager"] = ("Mariam", 29)

for (key, value) in dic2 {
    print("\(key) \(value.name) \(value.age)")
}


//Home Work 6_3


//հայտարարել Int -երի Set
//insert() ֆունկցիայի միջոցով ավելացնել հետևյալ արժեքները
//1, 3, 4, 5, 6,
//For in ցիկլի միջոցով տպեք այդ Set - ում գտնվող արժեքները տպեք

var set3 = Set<Int>()
set3.insert(1)
set3.insert(3)
set3.insert(4)
set3.insert(5)
set3.insert(6)

print(set3)

for aaaaa in set3 {
    print(aaaaa)
}


//Home Work 6_4
//հայտարարել Int -երի երկու Set համապատասխանաբար հետևյալ արժեքներով  [4, 5, 6, 7], [4, 5, 8, 9, 10, 33]
//օգտագործեք հետևյալ ֆունկցիաները և վերադաևող առդյունքը For in ցիկլի միջոցով տպեք
//union()
//intersection()
//subtracting()
//symmetricDifference()

var a: Set = [4, 5, 6, 7]
var b: Set = [4, 5, 8, 9, 10, 33]

let c = a.intersection(b)
//print(c)
for aa in c {
    print(aa)
}

let c1 = a.subtracting(b)
//print(c1)
for aa in c1 {
    print(aa)
}
let c3 = a.union(b)
//print(c3)
for aa in c3 {
    print(aa)
}
let c4 = a.symmetricDifference(b)
//print(c4)
for aa in c4 {
    print(aa)
}
   


//Home Work 6_5
//Հայտարարել Array հետևյալ արժեքով  [4, 5, 6, 7]
//For in ցիկլի միջոցով այդ Array-ում գտնվող աժեքները մեծացնել 2 անգամ


var array = [4, 5, 6, 7]
for index in 0..<array.count {
    array[index] = 2*array[index]
}
print(array)




//Home Work 6_6
//Հայտարարել Array հետևյալ արժեքով  [4, 5, 6, 7]
//For in ցիկլի միջոցով հաշվել այդ  Array-ում գտնվող  աժեքների գումարը

var array6 = [4, 5, 6, 7]
var sum = 0
for element in array6 {
    
   sum += element
    print(sum)

}



//Home Work 6_7
//Հայտարարել Array հետևյալ արժեքով  [4, 5, 6, 7]
//For in ցիկլի միջոցով հաշվել այդ  Array-ում գտնվող  զույգ թվերի գումարը


var array7 = [4, 5, 6, 7]
var sum7 = 0
for element in array7 where element % 2 == 0 {
    
    sum7 += element
    print(sum7) }



//Home Work 6_8
//Հայտարարել Array հետևյալ արժեքով  [4, 5, 6, 7]
//For in ցիկլի միջոցով հաշվել այդ  Array-ում գտնվող  կենտ թվերի գումարը

var array8 = [4, 5, 6, 7]
var sum8 = 0

for element8 in array8 where element8 % 2 != 0 {
    sum8 += element8
    print(sum8)
}




//Home Work 6_9
//Հայտարարել երկու  հավասար քանակ ունեցող Array համապատասխանաբար հետևյալ արժեքներով  [4, 5, 6, 7], [4, 5, 8, 93]
//նոր Array ում For in ցիկլի միջոցով պահել այդ 2 Array-ում գտնվող միմիանց հավասար ինդեքսներին համապատասխանող արժեքների գումարը (a[0] + b[0])







//Home Work 6_10
//For in ցիկլի միջոցով հաշվել 6 -ի ֆակտորիալը
//ֆակտորիալը ուսումնասիրել
//
var fact = 6
var num = 1
for count in 1...fact {
    num *= count
}
print(num)
