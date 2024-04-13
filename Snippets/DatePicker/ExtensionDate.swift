//
//  ExtensionDate.swift
//  Snippets
//
//  Created by Mauricio Posada Murillo on 17/11/23.
//

import Foundation

extension Date {
    
    func adding(_ component: Calendar.Component, value: Int) -> Date {
        let calendar = DateFormatterHelper.colombianCalendar
        return calendar.date(byAdding: component, value: value, to: self) ?? Date()
    }
    
    func formatToService() -> String {
        let dateFormatter = DateFormatterHelper.colombianDateFormatter
        dateFormatter.dateFormat = "yyyy-MM-dd"
        return dateFormatter.string(from: self)
    }
}
