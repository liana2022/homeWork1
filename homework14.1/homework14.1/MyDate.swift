//
//  MyDate.swift
//  homework14.1
//
//  Created by Liana Asatryan on 18.06.22.
//

import Foundation

class MyDate {
    var day = 25
    var month = 10
    var year = 2022
    var hour = MyTime()
    
    func changeFirstValueOfDay(day: Int) {
        self.day = day
    }
    func changeFirstValueOfMonth(month: Int) {
        self.month = month
    }
    
    func chanfeFirstValueOfYear(year: Int) {
        self.year = year
    }
    
    func getDate() -> String {
        let date = "\(self.day):\(self.month):\(self.year)\(self.hour.getTime())"
        return date
    }
    
    func printDate() {
        print(self.getDate())
    }
}
