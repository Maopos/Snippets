//
//  SnippetsView.swift
//  Snippets
//
//  Created by Mauricio Posada Murillo on 17/11/23.
//

import SwiftUI

struct SnippetsView: View {
    
    private let viewModel = SnippetsViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.snippets) { snippet in
                    NavigationLink(destination: snippet.destination) {
                        HStack {
                            snippet.image
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                                .symbolRenderingMode(.multicolor)
                                .fontWeight(.thin)
//                                .symbolEffect(.pulse, options: .repeating)
                            
                            Text(snippet.title)
                                .font(.title2)
                                .padding(.leading)
                            
                            Spacer()
                            
                        }
                    }
                }
            }
            .navigationTitle("👨🏻‍💻Snippets")
        }
    }
}

#Preview {
    SnippetsView()
}
