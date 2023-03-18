//
//  Date+.swift
//  SampleCulenderUI
//
//  Created by marcy731 on 2023/03/18.
//

import Foundation

extension Date {
    init?(yyyyMMddHHmm: String) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyyMMddHHmm"
        if let date = dateFormatter.date(from: yyyyMMddHHmm) {
            self = date
        } else {
            return nil
        }
    }
    
    var yyyyMMddHHmm: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyyMMddHHmm"
        return dateFormatter.string(from: self)
    }
    
    var startOfWeek: Date {
        var calendar = Calendar.current
        calendar.firstWeekday = 2
        let components = calendar.dateComponents([.yearForWeekOfYear, .weekOfYear], from: self)
        return calendar.date(from: components)!
    }
    
    func addDays(_ days: Int) -> Date {
        return Calendar.current.date(byAdding: .day, value: days, to: self)!
    }
    
    var dayOfWeekIndex: Int {
        return Calendar.current.component(.weekday, from: self) - 2
    }
    
    var shortDay: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "E"
        return dateFormatter.string(from: self)
    }
    
    func addYears(_ years: Int) -> Date? {
        var components = DateComponents()
        components.year = years
        return Calendar.current.date(byAdding: components, to: self)
    }
    
    func addDays(_ days: Int) -> Date? {
        var components = DateComponents()
        components.day = days
        return Calendar.current.date(byAdding: components, to: self)
    }
    
    func addHours(_ hours: Int) -> Date? {
        var components = DateComponents()
        components.hour = hours
        return Calendar.current.date(byAdding: components, to: self)
    }
    
    func addMinutes(_ minutes: Int) -> Date? {
        var components = DateComponents()
        components.minute = minutes
        return Calendar.current.date(byAdding: components, to: self)
    }
    
    func addSeconds(_ seconds: Int) -> Date? {
        var components = DateComponents()
        components.second = seconds
        return Calendar.current.date(byAdding: components, to: self)
    }
    
    func minutes(since date: Date) -> Int {
        let diffInSeconds = Int(self.timeIntervalSince(date))
        return diffInSeconds / 60
    }
    
    func minutesSinceStartOfDay() -> Int {
        let calendar = Calendar.current
        let startOfDay = calendar.startOfDay(for: self)
        let diffInSeconds = Int(self.timeIntervalSince(startOfDay))
        return diffInSeconds / 60
    }
}
