//
//  main.swift
//  Homework15
//
//  Created by Liana Asatryan on 25.06.22.
//

import Foundation

print("Hello, World!")

//Home Work 15

//1. Ստեղծել struct Point անունով որը պետք է ունենա 2 init `
//- պետք է սկզբնական արժեքներ տա x, y։ Օրինակ Point(x: 5, y: -8) -> x = 5, y = -8
//- պետք է միայն դրական սկզբնական արժեքներ տա   x, y-ին: Օրինակ Point(x: -5, y: -8) -> x = 5, y = 8


struct Point {
    var x: Double
    var y: Double
    
    init (x: Double, y: Double) {
        self.x = x
        self.y = y
    }
    
    init (x1: Double, y1: Double) {
        self.x = abs(x1)
        self.y = abs(y1)
    }
    
}

let point = Point(x1: -5, y1: 8)

print(point.x)












//2. Ստեղծել struct Rect (հետևյալ փրոփրտիներով origin: Point, weight: Double, height: Double ) անունով որը պետք է ունենա հետևյալ init-ները`
//- init(origin: Point, weight: Double, height: Double)
//- init(center: Point, weight: Double, height: Double)
//- init(weight: Double, height: Double) -> Point.x = 0 Point.y = 0


struct Rect {
    var origin: Point
    var weight: Double
    var height: Double
    
    init (origin: Point, weight: Double, height: Double) {
        self.origin = origin
        self.weight = weight
        self.height = height
    }
    
    init (center: Point, weight: Double, height: Double) {
        let originX = center.x - weight/2
        let originY = center.y + height/2
        self.origin = Point.init(x: originX, y: originY)
        self.height = height
        self.weight = weight
    }
    
    init(weight: Double, height: Double) {
        self.origin = Point(x: 0, y: 0)
        self.weight = weight
        self.height = height
    }
}

//3. Ստեղծել struct Color (հետևյալ փրոփրտիներով red, green, blue)
//- init(red: Double, green: Double, blue: Double)
//- init(red: Double)
//- init(green: Double)
//- init(blue: Double)

struct Color {
    var red: Double
    var green: Double
    var blue: Double
    
    init (red: Double, green: Double, blue: Double) {
        self.red = red
        self.green = green
        self.blue = blue
    }
    init (red: Double) {
        
        self.red = red
        self.blue = 0
        self.green = 0
    }
    init (blue: Double) {
        self.init(red: 0, green: 0, blue: blue)
    }
}


//4. Ստեղծել Class Car անունով (հետևյալ փրոփրտիներով name, model,speed, isAutomatic)  որը պետք է ունենա հետևյալ init-ները`
//- init(name: String, model: String, speed: String, isAutomatic: Bool)
//- init(name: String, model: String, speed: String)
//- init(name: String, model: String)
//- init(name: String)
//- init()

class Car {
    var name: String
    var model: String
    var speed: String
    var isAutomatic: Bool
    
    init (name: String, model: String, speed: String, isAutomatic: Bool) {
        
        self.name = name
        self.model = model
        self.speed = speed
        self.isAutomatic = true
    }
    
    convenience init(name: String, model: String, speed: String) {
        self.init(name: name, model: model, speed: speed, isAutomatic: false)
    }
    convenience init (name: String, model: String) {
        self.init(name: name, model: model, speed: "")
    }
    convenience init(name: String) {
        self.init(name: name, model: "")
    }
    
    convenience init() {
        self.init(name: "")
    }
    
}
//5. Ստեղծել Class View անունով (հետևյալ փրոփրտիներով frame: Rect, backgroundColor: Color, tag: Int)
//որը պետք է ունենա հետևյալ init-ները`
//- init(frame: Rect, backgroundColor: Color, tag: Int)
//- init(frame: Rect, backgroundColor: Color)
//- init(frame: Rect)
//- init()

class View {
    
    var frame: Rect, backgroundColor: Color, tag: Int
    
    init(frame: Rect, backgroundColor: Color, tag: Int) {
        self.frame = frame
        self.backgroundColor = backgroundColor
        self.tag = tag
    }
    
    init(frame: Rect, backgroundColor: Color) {
        self.frame = frame
        self.backgroundColor = backgroundColor
        self.tag = 0
    }
    
    init(frame: Rect) {
        self.frame = frame
        self.backgroundColor = Color(red: 0)
        self.tag = 0
    }
    
    init() {
        self.frame = Rect(weight: 50, height: 40)
        self.backgroundColor = Color(red: 0)
        self.tag = 0
    }
}


//
//6. Ստեղծել Class Button որը կժառանգվի View -ից (հետևյալ փրոփրտիներով titleName: String, isSelected: Bool) որը պետք է ունենա հետևյալ init-ները`
//- init(frame: Rect, titleName: String, isSelected: Bool)
//- init(frame: Rect, titleName: String)
//
//

class Button: View {
    
    var titleName: String
    var isSelected: Bool
    
    init(frame: Rect, titleName: String, isSelected: Bool) {
        self.titleName = titleName
        self.isSelected = isSelected
        
        super.init(frame: frame)
    }
    
    convenience init(frame: Rect, titleName: String) {
        self.init(frame: frame, titleName: titleName, isSelected: true)
        
    }
}
