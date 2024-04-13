//
//  DatePicker_View.swift
//  Snippets
//
//  Created by Mauricio Posada Murillo on 17/11/23.
//

import SwiftUI

struct DatePicker_View: View {
    @StateObject var viewModel = DatePicker_ViewModel()
        
        var body: some View {
            HStack {
                Spacer(minLength: 80)
                Text("Desde:")
                    .font(.title3)
                    .foregroundColor(Color(UIColor.darkGray))
                
                ZStack {
                    Text(viewModel.dateSince.formatToService())
                        .font(.title3)
                        .foregroundColor(Color(UIColor.darkGray))
                        .frame(maxWidth: .infinity, alignment: .center)
            
                    DatePicker("", selection: $viewModel.dateSince, in: Date(timeIntervalSince1970: 0)...viewModel.maxDateSince, displayedComponents: .date)
                        .fixedSize()
                        .blendMode(.destinationOver)
                        .environment(\.locale, Locale(identifier: "es_ES"))
                }
                
                Image(systemName: "calendar")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 25, maxHeight: 25)
                
                Spacer(minLength: 80)
            }
            
        }
}

#Preview {
    DatePicker_View()
}
