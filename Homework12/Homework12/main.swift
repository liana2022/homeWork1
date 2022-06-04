////
////  main.swift
////  Homework12
////
////  Created by Liana Asatryan on 03.06.22.
////
//
//import Foundation
//
//print("Hello, World!")
//
//Home Work 12 (enums)
//
//1. հյուսիս հարաֆ արևմուտք արևելք արժեքների համար ստեղծել նոր տիպ։ Ստեղծված նոր տիպով հայտարարել փոփոխականեր և հաստատուներ բոլոր աժեքների համար։


enum Sides {
    case North
    case South
    case West
    case East
}

var currentSides = Sides.North
var currentSides1 = Sides.East
var currentSides2 = Sides.South
var currentSides3 = Sides.West


let currentSides4 = Sides.North
let currentSides5 = Sides.East
let currentSides6 = Sides.South
let currentSides7 = Sides.West


//2. Տարվա ամիսների արժեքով ստեղտել նոր տիպ։ Ստեղծված նոր տիպով հայտարարել փոփոխականեր և հաստատուներ բոլոր աժեքների համար։


enum Months {
    case january
    case february
    case march
    case april
    case may
    case june
    case july
    case august
    case september
    case october
    case november
    case december
    
}

var currentMonths = Months.january
var CurrentMonths1 = Months.february
var currentMonth2 = Months.march
var currentMonts3 = Months.april
var currentMonths4 = Months.may
var currentMonts5 = Months.june
var currentMonths6 = Months.july
var currentMonths7 = Months.august
var currentMonths8 = Months.september
var CurrentMontjs9 = Months.october
var currentMonths10 = Months.november
var currentMonths11 = Months.december







//3.  Տարվա ամիսների արժեքով ստեղտել նոր տիպ։ Մեզ ծանոթ ցիկլերի միջոցով տպեք ստեղցված տիպի բոլոր արժեքները։




enum Months1 {
    case january
    case february
    case march
    case april
    case may
    case june
    case july
    case august
    case september
    case october
    case november
    case december
    
}

var months: [Months] = [.january, .february, .march, .april, .may, .july, .july, .august, .september, .october, .november, .december]



for month in months {
    print(month)
}


//4. Գրասենյակային աշխատողները ամեն օր ստանում են հանձնարարություները և այդ հանձնարարություները կատարման ընթացքում կարող են ունենալ տարբեր վիճակներ ՝  Նոր ստեղծված, ընթացքի մեջ է, ստուգվում է և ավարտված։ Ստեղծել նոր տիպ որի հավանական արժեքները կլինեն այդ վիճակները:
   
enum Task {
    case new
    case inProgress
    case checking
    case completed
}

var taskStatus = Task.new
print(taskStatus)




//5. Գրասենյակային աշխատողները ամեն օր ստանում են հանձնարարություները և այդ հանձնարարություները կատարման ընթացքում կարող են ունենալ տարբեր վիճակներ ՝  Նոր ստեղծված, ընթացքի մեջ է, ստուգվում է և ավարտված։ Երբ փոխվում է ընտացիկ վիաճակը պետք է նաև պահել ինֆորմացիա ամսաթվի տեսքով(այսինքն թե այդ աշատողը ինչ ժամի է սկսել կատարել այդ հանձնարարաությունը, ինչ ժամի է ավարտել)   Ստեղծել նոր տիպ որի հավանական արժեքները կլինեն այդ վիճակները իսկ այդ վիժակները կունենան իրենց կապված արժեքներ որը ցույց կատա ամսաթիվը (ամսաթիվը դիտարկել String):

enum TaskWithDate {
    case new(String)
    case inProgress(String)
    case checking(String)
    case completed(String)
}


var taskWithDate = TaskWithDate.new("12.08.2022")
print(taskWithDate)

var tasksWithDate: [TaskWithDate] = [
    .new("12.09.22"),
    .checking("12.09.06"),
    .completed("30.01.21"),
    .inProgress("23.04.04")
]

for task in tasksWithDate {
    print(task)
}

//6. Գրասենյակային աշխատողները ամեն օր ստանում են հանձնարարություները և այդ հանձնարարություները կատարման ընթացքում կարող են ունենալ տարբեր վիճակներ ՝  Նոր ստեղծված, ընթացքի մեջ է, ստուգվում է և ավարտված։ Երբ փոխվում է ընտացիկ վիաճակը պետք է նաև պահել ինֆորմացիա ամսաթվի տեսքով(այսինքն թե այդ աշատողը ինչ ժամի է սկսել կատարել այդ հանձնարարաությունը, ինչ ժամի է ավարտել)   Ստեղծել նոր տիպ որի հավանական արժեքները կլինեն այդ վիճակները իսկ այդ վիժակները կունենան իրենց կապված արժեքներ որը ցույց կատա ամսաթիվը (ամսաթիվը դիտարկել Data (type) https://developer.apple.com/documentation/foundation/data):
//
//7. Ստեղծել կոճակի (Button) ըթացքիկ վիճակը բնութագրող տիպ, այս խնդրում  կոճակը ունի 3 վիճակ (case) երբ սեղմված չէ (normal), երբ սեղմված է (selected), երբ վոչ ակտիվ է,  normal վիճակում իրեն կապակցված արժեքը պետք է լինի այդ Button-ի անունը, selected վիճակում  իրեն կապակցված արժեքը պետք է լինի այն ֆունկցիան որը պետք է կանչվի սեղմելուց հետո։






//8. Ստեղծել կոճակի (Button) ըթացքիկ վիճակը բնութագրող տիպ, այս խնդրում  կոճակը ունի 3 վիճակ (case) երբ սեղմված չէ (normal), երբ սեղմված է (selected), երբ վոչ ակտիվ է,  normal վիճակում իրեն կապակցված արժեքը պետք է լինի այդ Button-ի անունը, selected վիճակում  իրեն կապակցված արժեքը պետք է լինի այն closure որը պետք է կանչվի սեղմելուց հետո։
//


let user1: (Int, String, String, Int) = (0, "jon777", "Jon", 22)
let user2: (Int, String, String, Int) = (1, "anna.56", "Anna", 22)
let user3: (Int, String, String, Int) = (2, "hayk890", "Hayk", 34)
let user4: (Int, String, String, Int) = (3, "vaxo45", "Vaxo", 22)

let users: [(Int, String, String, Int)] = [user1, user2, user3, user4]
//           id   userName name,  age
//           0       1      2      4
enum UserIdentifier {
    case id(Int)
    case userName(String)
    case age(Int)
}

func getUserBy(identifier: UserIdentifier) -> [(Int, String, String, Int)] {
    
    var userId: Int?
    var userName: String?
    var age: Int?
    
    switch identifier {
    case UserIdentifier.id(let id):
        userId = id
    case UserIdentifier.userName(let name):
        userName = name
    case UserIdentifier.age(let userAge):
        age = userAge
    }
    
    if let id = userId {
        let newUsers = users.filter { (userId, _, _, _) in
            return id == userId
        }
                
        return newUsers
            
    } else if let nameUser = userName {
        let newUsers = users.filter { (_, name, _, _) in
            return name == nameUser
        }
        
        return newUsers
    } else if let userAge = age {
        let newUsers = users.filter { (_, _, _, age) in
            return age == userAge
        }
        
        return newUsers
    } else {
        return []
    }
}

let userFilterValue = UserIdentifier.age(22)

print(getUserBy(identifier: userFilterValue))

