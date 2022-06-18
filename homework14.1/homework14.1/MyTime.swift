//
//  MyTime.swift
//  homework14.1
//
//  Created by Liana Asatryan on 18.06.22.
//

import Foundation

class MyTime {
    
    var hour = 14
    var minute = 10
    var secunde = 6
    
    func changeFirstValueHour(hour: Int) {
        self.hour = hour
    }
    
    func changeFirstValueMinute(minute: Int) {
        self.minute = minute
    }
    
    func changeFirstValueSecunde(secunde: Int) {
        self.secunde = secunde
    }
    
    func getTime() -> String {
        let time = "\(self.hour):\(self.minute):\(self.secunde)"
        return time
    }
    
    func printTime() {
        print(self.getTime())
    }
    
    //MARK:- Kisat
    func addSecond(second: Int) {
        let addedHour = second % 3600
        self.hour += addedHour
        let addedMinute = addedHour % 60
        self.minute += addedMinute
    }
    
}
