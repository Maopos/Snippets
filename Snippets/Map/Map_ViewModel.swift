//
//  Map_ViewModel.swift
//  Snippets
//
//  Created by Mauricio Posada Murillo on 19/11/23.
//

import Foundation

@Observable
class Map_ViewModel {
    
    let prices: [Int] = [500, 300, 600, 100]
    var mapPrices: [Int] = []

    func mapingPrices() {
        mapPrices = prices
            .map { $0 > 400 ? $0 : nil }
            .compactMap { $0 }
    }
    
    //--------------------------------------------
    
    let numbers = ["1", "2", "tres", "4", "cinco"]
    var strNumbers: [Int] = []
    
    
    func convertPricesToText() {
        let strNum1 = numbers.map { Int($0) }
        strNumbers = strNum1.compactMap { $0 }
    }
}
