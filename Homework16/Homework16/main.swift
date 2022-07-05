//
//  main.swift
//  Homework16
//
//  Created by Liana Asatryan on 28.06.22.
//

import Foundation

print("Hello, World!")

//Home Work 16
//
//1. Ստեղծել Class View անունով (հետևյալ փրոփրտիներով frame: Rect, backgroundColor: Color, tag: Int)
//որը պետք է ունենա հետևյալ init-ները`
//- init(frame: Rect, backgroundColor: Color, tag: Int)
//- init(frame: Rect, backgroundColor: Color)
//- init(frame: Rect)
//- init()

class Rect {
    
}
class Color {
    
}
class View {
    var frame: Rect
    var backgroundColor: Color
    var tag: Int
    
    init(frame: Rect, backgroundColor: Color, tag: Int) {
        self.frame = frame
        self.tag = tag
        self.backgroundColor = backgroundColor
    }
    
    init(frame: Rect, backgroundColor: Color) {
        self.frame = frame
        self.backgroundColor = backgroundColor
        self.tag = 0
    }
    init(frame: Rect) {
        self.frame = frame
        self.tag = 0
        self.backgroundColor = Color.init()
    }
    convenience init() {
        self.init(frame: Rect.init(), backgroundColor: Color.init(), tag: .init())
    }

}


//2. Ստեղծել Class GITCViewController անունով (հետևյալ փրոփրտիներով view: View, navigationTitle: String)
//որը պետք է ունենա հետևյալ init-ները`
//- init()
//- init(navigationTitle: String)
//- init(frame: Rect)

class GITCViewController {
    var view: View
    var navigationTitle: String
    
    init() {
        self.view = View.init()
        self.navigationTitle = ""
    }
    
    init(navigationTitle: String)  {
        self.navigationTitle = navigationTitle
        self.view = View.init()
    }
    init(frame: Rect) {
        self.view = View.init()
        self.navigationTitle = ""
        self.view.frame = frame
    }
    
}

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

//6. Ստեղծել Enum RequestMethod անունով հետևյալ հավանական արժեքներով post, get, delete

enum RequestMethod {
    case post
    case get
    case delete
}

//5. Ստեղծել Class LoadDataFromServer անունով  (հետևյալ փրոփրտիներով requestUrl: String, requestMethod: RequestMethod)
//որը պետք է ունենա հետևյալ init-ները`
//init?(requestUrl: String, requestMethod: RequestMethod)
//

class LoadDataFromServer {
    
    var requestUrl: String
    var requestMethod: RequestMethod
        
    init?(requestUrl: String, requestMethod: RequestMethod) {
        self.requestUrl = requestUrl
        self.requestMethod = requestMethod
    }
}
