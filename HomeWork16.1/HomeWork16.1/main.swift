//
//  main.swift
//  HomeWork16.1
//
//  Created by Liana Asatryan on 05.07.22.
//

import Foundation

print("Hello, World!")


//3. Ստեղծել struct PhoneNumber անունով (հետևյալ փրոփրտիներով code: String number: String)
//որը պետք է ունենա հետևյալ init-ները`
//- init?(code: String, number: String) code և number չեն կարող լինել դատարկ
//-init?(number: String)  number  չեն կարող լինել դատարկ code = “+374”


struct PhoneNumber {
    
    var code: String
    var number: String
    
    init?(code: String, number: String) {
        if code.isEmpty || number.isEmpty {
            return nil
        }
        self.code = code
        self.number = number
    }
    
    init?(number: String) {
        if number.isEmpty {
            return nil
        }
        self.number = number
        self.code = "+374"
    }
}


//4. Ստեղծել Class CallManager անունով (հետևյալ փրոփրտիներով callFrom: PhoneNumber, callTo: PhoneNumber)
//որը պետք է ունենա հետևյալ init-ները`
//- init?(callFrom: PhoneNumber?, callTo: PhoneNumber?) callFrom և callTo չեն կարող լինել nil
//- Init?(callFrom: String, callTo: String) code- ի երկարությունը 4 է,  callFrom և callTo չեն կարող լինել դատարկ

class CallManager {
    var callFrom: PhoneNumber
    var callTo: PhoneNumber
    
    init?(callFrom: PhoneNumber?, callTo: PhoneNumber?) {
        if callFrom == nil || callTo == nil {
            return nil
        }
        self.callFrom = callFrom!
        self.callTo = callTo!
    }
    
    
    
    
    init?(callFrom: String, callTo: String) {
        if callFrom.isEmpty || callTo.isEmpty {
            return nil
        }
        
        let callFrom = PhoneNumber.init(number: callFrom)
        let callTo = PhoneNumber.init(number: callTo)
        
        if callFrom == nil || callTo == nil {
            return nil
        }
        
        if callFrom!.code.count != 4 || callTo!.code.count != 4 {
            return nil
        }
        
        self.callFrom = callFrom!
        self.callTo = callTo!
    }
}
