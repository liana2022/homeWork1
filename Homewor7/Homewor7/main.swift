////
////  main.swift
////  Homewor7
////
////  Created by Liana Asatryan on 17.05.22.
////
//
//import Foundation
//
//print("Hello, World!")
//
//Home Work 7

//Home Work 7_1
//Հայտարարել Array հետևյալ արժեքով  [4, 780, 2346, 9090]
//while ցիկլի միջոցով այդ Array-ում գտնվող աժեքները մեծացնել 10 անգամ


var array: [Int] = [4, 780, 2346, 9090]

var currentIndex = 0

while currentIndex < array.count {
    array[currentIndex] = array[currentIndex] * 10
    currentIndex += 1
}
print(array)





//Home Work 7_2
//Հայտարարել Array հետևյալ արժեքով  [4, 5, 690, 7]
//while ցիկլի միջոցով հաշվել այդ  Array-ում գտնվող  աժեքների գումարը

var array1: [Int] = [4, 780, 2346, 9090]

var currentIndex1 = 0

var sum2 = 0

while currentIndex1 < array1.count {
    
    sum2 += array1[currentIndex1]
   
    currentIndex1 += 1
}
print(sum2)



//Home Work 7_3
//Հայտարարել Array հետևյալ արժեքով  [4, 46, 5, 6, 7]
//while iցիկլի միջոցով հաշվել այդ  Array-ում գտնվող  զույգ թվերի գումարը

var array3: [Int] = [4, 780, 2346, 9090]

var currentIndex3 = 0


var sum3 = 0

while currentIndex3 < array3.count {
    if array[currentIndex3] % 2 == 0 {
        sum3 += array3[currentIndex3]
    }
    
    currentIndex3 += 1

}

print(sum3)

//Home Work 7_4
//Հայտարարել Array հետևյալ արժեքով  [4, 54, 36, 127]
//while  ցիկլի միջոցով հաշվել այդ  Array-ում գտնվող  կենտ թվերի գումարը

var array4: [Int] = [4, 780, 2346, 9090]

var currentIndex4 = 0


var sum4 = 0

while currentIndex4 < array4.count {
    if array[currentIndex4] % 2 != 0 {
        sum4 += array4[currentIndex4]
    }
    
    currentIndex4 += 1

}

print(sum4)




//Home Work  7_5
//Հայտարարել Array հետևյալ արժեքով  [4, 54, 36, 127]
//while  ցիկլի միջոցով հաշվել այդ  Array-ում գտնվող  թվերի միջին թվաբանականը


var array5: [Int] = [4, 780, 2346, 9090]

var currentIndex5 = 0


var sum5 = 0

while currentIndex5 < array5.count {
    
    sum5 += array5[currentIndex5]
    
    currentIndex5 += 1

}

print(sum5/array5.count)

//Home Work 7_6
//Հայտարարել Array հետևյալ արժեքով  [4, 54, 36, 127]
//while  ցիկլի միջոցով տպել այդ  Array-ում գտնվող  թվերի թվանշանները

var array6 = [4, 54, 36, 127]

var qanak = 0

while qanak < array6.count {
    
    let value = array6[qanak]
    
    let stringValue = String(value)
    
    let characters = Array(stringValue)
    
    var currentIndex = 0
    
    while currentIndex < characters.count {
        
    print(characters[currentIndex])
        currentIndex += 1
    }
    
    qanak += 1
    
    
}





//Home Work 7_7
//while  ցիկլի միջոցով տպել  հետևյալ նկարը
//
//*******
//*       *
//*       *
//*       *
//*       *
//*       *
//*******

var currentIndex7 = 0
while currentIndex7 < 7 {
    if currentIndex7 == 0 || currentIndex7 == 6{
        print("********")
    } else {
        print("*        *")
    }
    currentIndex7 += 1
}



//Home Work 7_8
//
//Հայտարարել հաստատուներ a , b Int տիպերի
//
//while  ցիկլի միջոցով տպել  հետևյալ նկարը որտեղ հորիզոնական աստղիկների քանակը վերցվում է a  -ից իսկ ուղղահայացներինը  b-ից
//
//օրինակ եթե a = 7 իսկ b = 4 պետք է տպել նման նկար
//
//*******
//*       *
//*       *
//*******


//Հուշում`  պետք է օգտագործել նրդրված ցիկլ այսինքն ցիկլ ցիկլի մեջ, օգտագորշել string-ի  \n հատուկ սինվոլը տեքստը կոնսոլում նոր տեղից տպելու ահմար, կարելի է ամեն տողը տպելու համար ունենքլ string տիպի փոփոխական:
//
//

