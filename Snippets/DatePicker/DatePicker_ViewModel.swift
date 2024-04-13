//
//  DatePicker_ViewModel.swift
//  Snippets
//
//  Created by Mauricio Posada Murillo on 17/11/23.
//

import Foundation

class DatePicker_ViewModel: ObservableObject {
    
    @Published var dateSince: Date = Date().adding(.year, value: 0)
    @Published var maxDateSince: Date = Date()
}
