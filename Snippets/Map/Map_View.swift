//
//  Map_View.swift
//  Snippets
//
//  Created by Mauricio Posada Murillo on 19/11/23.
//

import SwiftUI

struct Map_View: View {
    
    private let viewModel = Map_ViewModel()
    
    var body: some View {
        List {
            ForEach(viewModel.mapPrices, id:\.self){ price in
                Text("\(price)")
            }
        }
        .onAppear(){
            viewModel.mapingPrices()
        }
        
        List {
            ForEach(viewModel.strNumbers, id:\.self){ num in
                Text("\(num)")
            }
        }
        .onAppear(){
            viewModel.convertPricesToText()
            
        }
    }
}

#Preview {
    Map_View()
}
