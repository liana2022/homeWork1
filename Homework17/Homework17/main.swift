//
//  main.swift
//  Homework17
//
//  Created by Liana Asatryan on 08.07.22.
//

import Foundation

print("Hello, World!")

//Home Work 17

//1. Ստեղծել բազային (base) class Person հետևյալ փրոփրտիով name, Ստեղծել class Chef որը կժառանգվի Person -ից և ունի հետևյալ փրոփրտիները restaurant, phoneNumber, Ստեղծել class Developer որը կժառանգվի Person -ից և ունի հետևյալ փրոփրտիները office, phoneNumber: Ստեղծել  Chef և Developer կլասներոց հինգական էկզեմպլյար դրանք տեղադրել մասիվի մեջ (բոլորը նույն մասիվի մեջ) ցիկլով անցնել էկզեմպլյարների վրայով և տպել էկզեմպլյարների name փրոփրտին, աշխատանքի վայրը և հեռախոսահամարը։


class Person {
    
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
}

class Chef: Person {
    var restaurant: String
    var phonenumber: Int
    
    init(restaurant: String, phonenumber: Int, name: String) {
        self.restaurant = restaurant
        self.phonenumber = phonenumber
        super.init(name: name)
    }
}
    
class Developer: Person {
    var office: String
    var phonenumber: Int
    
    init(office: String, phonenumber: Int, name: String) {
        self.office = office
        self.phonenumber = phonenumber
        super.init(name: name)
    }
}

var persons = [
    Chef.init(restaurant: "Villa", phonenumber: 37477567809, name: "Armen"),
    Chef.init(restaurant: "Rubina", phonenumber: 37460987867, name: "Sargis"),
    Developer.init(office: "Bet", phonenumber: 374567687, name: "Anna"),
    Developer.init(office: "Digitain", phonenumber: 37455678997, name: "Anush"),
    Chef.init(restaurant: "Mezzo", phonenumber: 37455009988, name: "Anahit")
]

for person in persons {
    if let obj = person as? Chef {
        print(obj.name, obj.phonenumber, obj.restaurant)
    }
    if let obj = person as? Developer {
        print(obj.name, obj.phonenumber, obj.office)
    }
}

//2. Ստեղծել մասիվ Any որը պետք է պարունակի swift -ի բազային տիպերով ստեղծված արժեքներ Int, Double, Float, String
// ցիկլով տպել այդ արժեքները։

var array: [Any] = [45, 45.7, 67.98, "sum"]

 
for item in array {
    print(item)
}

for index in 0..<array.count {
    print(array[index])
}

for (index, item) in array.enumerated() {
    print(index, item)
}



//3. Int-ի համար գրել Extension
//- plus(r: Int)
//- minus(r: Int)

extension Int {
    mutating func plus(r: Int) {
        self += r
    }
}
var a = 5
a.plus(r: 6)
print(a)


extension Int {
    mutating func minus(r: Int) {
        self -= r
    }
}

var b = 10
b.minus(r: 6)
print(b)


//4. Double համար գրել Extension
//- plus(r: Double)
//- minus(r: Double)

extension Double {
    mutating func plus(r: Double) {
        self += r
    }
}

var c = 8
c.plus(r: 10)
print(c)

extension Double {
    mutating func minus(r: Double) {
        self -= r
    }
}

var d = 24
d.minus(r: 10)
print(d)

