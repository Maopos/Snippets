//
//  CloseKeyboard_View.swift
//  Snippets
//
//  Created by Mauricio Posada Murillo on 19/11/23.
//

import SwiftUI

struct CloseKeyboard_View: View {
    @State private var text = ""
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                
                TextField("Escribe aquí", text: $text)
                
                Spacer()
            }
            .padding()
            .background(){
                Color.white
            }
            .onTapGesture {
                // Ocultar el teclado al tocar en cualquier parte de la vista.
                UIApplication.shared.endEditing()
            }
        }
    }
}

// Extensión de UIApplication para ocultar el teclado
extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

#Preview {
    CloseKeyboard_View()
}
