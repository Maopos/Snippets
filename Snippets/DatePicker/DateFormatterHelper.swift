//
//  DateFormatterHelper.swift
//  Snippets
//
//  Created by Mauricio Posada Murillo on 17/11/23.
//

import Foundation

class DateFormatterHelper {
    
    // For String and Date extensions
    static var colombianLocale = Locale(identifier: "es_CO_POSIX")
    static var colombianTimeZone = TimeZone(identifier: "UTC")!//TimeZone(identifier: "America/Bogota")!
    static var colombianCalendar: Calendar {
        var calendar = Calendar.current
        calendar.timeZone = colombianTimeZone
        calendar.locale = colombianLocale
        return calendar
    }
    
    static var colombianDateFormatter: DateFormatter {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .full
        dateFormatter.timeStyle = .full
        dateFormatter.timeZone = colombianTimeZone
        dateFormatter.locale = colombianLocale
        return dateFormatter
    }
    
    static var colombianNumberFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.locale = colombianLocale
        return formatter
    }
}
