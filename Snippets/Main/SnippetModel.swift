//
//  SnippetModel.swift
//  Snippets
//
//  Created by Mauricio Posada Murillo on 17/11/23.
//

import Foundation
import SwiftUI


// This Swift code defines a struct named `SnippetModel` that conforms to the `Identifiable` protocol.
// Here's what each property does:
struct SnippetModel: Identifiable {
    let id = UUID()
    let title: String
    let image: Image
    let destination: AnyView
}
