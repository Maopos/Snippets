//
//  SnippetsViewModel.swift
//  Snippets
//
//  Created by Mauricio Posada Murillo on 17/11/23.
//

import SwiftUI

@Observable
class SnippetsViewModel {
    
    let snippets: [SnippetModel] = [
        SnippetModel(title: "DatePicker", image: Image(systemName: "calendar"), destination: AnyView(DatePicker_View())),
        SnippetModel(title: "CloseKeyboard", image: Image(systemName: "keyboard"), destination: AnyView(CloseKeyboard_View())),
        SnippetModel(title: "Map - CompactMap", image: Image(systemName: "map"), destination: AnyView(Map_View()))
    ]
}
