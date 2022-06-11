//
//  main.swift
//  Homework13
//
//  Created by Liana Asatryan on 10.06.22.
//

import Foundation

print("Hello, World!")

//Home Work 13 (class structs, stored and computed properties)

//1. Ստեղծել class որը կունենա 1 stored property Int տիպի կունենա 1 computed property String տիպի միայն կարտալու (get) համար որը կվերադաձնի stored property-ի տեքստային տարբերակը ինտերպոլացիայով։


class Person {
    var age: Int = 27
    
    var name: String  {
        get {
            return "She is \(age) years old"
        }
        
    }
}

let individual = Person()
print(individual.name)





//2. Ստեղծել class որը կունենա 1 stored property Int տիպի կունենա 1 computed property String տիպի կարտալու(get) գրելու(set) համար որը կվերադաձնի stored property-ի տեքստային տարբերակը ինտերպոլացիայով, իսկ set-ի դեպքում իր նոր աժեքը կվերածի Int -ի և կփոխի  stored property-ի արժեքը իսկ եթե չի հաջողվի String -ը դարձնել Int ապա stored property -ի արժեքը թողնել անփոփոխ։

class Man {
    
    var age = 8
    
    var ageString: String {
        set {
            if let age = Int(newValue) {
                self.age = age
            }
        }
        
        get {
            return String(age)
        }
    }
}

var man = Man()
man.ageString = "555"
man.ageString = "789"
man.ageString = "7897"

print(man.ageString)


//3. Ստեղծել struct որը կունենա 1 stored property String տիպի կունենա 1 computed property Int? տիպի կարտալու(get) գրելու(set) համար որը կվերադաձնի stored property-ի թվային տարբերակը իսկ եթե չի հաջողվի ապա nill, իսկ set-ի դեպքում իր նոր աժեքը կվերածի String -ի և կփոխի  stored property-ի արժեքը:

struct Employee {
    
    var position: String
    
    var salary: Int? {
        get {
            return Int(position) ?? nil
        }
        set {
            if let newValue = newValue {
                position = "\(newValue)"
            }
        }
    }
}





//4. Ստեղծել struct որը կունենա 2 stored property Int տիպի կունենա 4 computed property Double տիպի միայն կարտալու (get) համար որոնք համապատասխանաբար կվերադաձնեն 2 stored property -ի գումարը, տարբերությունը, ատադրյալը և քանորդը։
//

struct Calculator {
    
    var stored1: Int
    var stored2: Int
    
    var result1: Double {
        return Double(stored1 + stored2)
    }
    
    var result2: Double {
        return Double(stored1 - stored2)
    }
    
    var result3: Double {
        return Double(stored1 / stored2)
    }
    
    var result4: Double {
        return Double(stored1 * stored2)
    }
}

//5. Ստեղծել struct որը կունենա 1 stored property [Int] տիպի կունենա 1 computed property String տիպի միայն կարտալու (get) համար որոնք կվերադաձնի stored property-ում գտվող արժեքների տեքստային ներկայացումը (միմիանցից բաժանել ստորակետերով)

struct Calculator2 {
    
    var values: [Int]
    
    var result: String {
        return values.map({String($0)}).joined(separator: ",")
    }
}

//6. Ստեղծել struct որը կունենա 1 stored property [Int] տիպի կունենա 1 computed property Double տիպի միայն կարտալու (get) համար որոնք կվերադաձնի stored property-ում գտվող արժեքների միջին թվաբանականը։

struct Calculator3 {
    
    var values: [Int]
    
    var result: Double {
        return Double(values.reduce(0, +)/values.count)
    }
}

//7. Ստեղծել struct որը կունենա 1 stored property [String: Int] տիպի կունենա 1 computed property [String],  1 computed property [Int] տիպի միայն կարտալու (get) համար որոնք կվերադաձնեն համապատասխանաբար stored property -ի key-երը value-երը։

struct Calculator4 {
    
    let dict: [String: Int]
    
    
    var keys: [String] {
        return dict.map({$0.key})
    }
    
    var values: [Int] {
        return dict.map({$0.value})
    }
}
