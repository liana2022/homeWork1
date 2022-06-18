//
//  main.swift
//  homework14.1
//
//  Created by Liana Asatryan on 17.06.22.
//

import Foundation

print("Hello, World!")

//Home Work 14.1
//
//1. Ստեղծել class որը MyTime անունով որը պետք է ունենա ժամանակը բնութագրող property-եր (ժամ, րոպե, վարկյան)։
//Այս կլասի էկզեմպլայրը պետք է ունոնոա հետևյալ մեթոդները՝։
//- փոխել ժամի սկզբնական արժեքը
//- փոխել րոպեի սկզբնական արժեքը
//- փոկել վարկյանի սկզբնական արժեքը
//- վերադաձնի ժամի տեքստային տարբերակը այս ֆորմատով hh:mm:ss (23:45:31)
//- տպի ժամի տեքստային տարբերակը այս ֆորմատով hh:mm:ss (23:45:31)
//- ունենալ addSecond ֆունկցիա որը կավելացնի ընդանուր ժամին վարկյաներ և կաղված արժեքից կփոխի րոպեն և ժամը



let myTime = MyTime()
myTime.changeFirstValueHour(hour: 1)
print(myTime.hour)

myTime.changeFirstValueMinute(minute: 7)
print(myTime.minute)

myTime.changeFirstValueSecunde(secunde: 9)
print(myTime.secunde)

//print(myTime.getTime())
myTime.printTime()



//2. Ստեղծել class որը MyDate անունով որը պետք է ունենա ամսաթիվը  և ժամանակը բնութագրող property-եր (օր, ամիս, տարի, MyTime տիպի property-ի որը ստեղծվել էր առաջին խնդրում)։
//Այս կլասի էկզեմպլայրը պետք է ունոնոա հետևյալ մեթոդները՝։
//- փոխել օրվա սկզբնական արժեքը
//- փոխել ամսվա սկզբնական արժեքը
//- փոխել տարվա սկզբնական արժեքը
//- փոխել ժամի սկզբնական արժեքը
//- փոխել րոպեի սկզբնական արժեքը
//- փոկել վարկյանի սկզբնական արժեքը
//- վերադաձնի ամսաթիվի տեքստային տարբերակը այս ֆորմատով dd:mm:yyyy hh:mm:ss (02:03:2022 23:45:31)
//- տպի ժամի տեքստային տարբերակը այս ֆորմատով hh:mm:ssdd:mm:yyyy hh:mm:ss (02:03:2022 23:45:31)
//ունենալ addSecond ֆունկցիա որը կավելացնի ընդանուր ժամին վարկյաներ և կաղված արժեքից կփոխի րոպեն և ժամը, օրը, ամիսը, տարին



let myDate = MyDate()
myDate.changeFirstValueOfDay(day: 6)
print(myDate.day)

myDate.changeFirstValueOfMonth(month: 8)
print(myDate.month)

myDate.chanfeFirstValueOfYear(year: 2023)
print(myDate.year)
