//
//  SnippetModel.swift
//  Snippets
//
//  Created by Mauricio Posada Murillo on 17/11/23.
//

import Foundation
import SwiftUI

struct SnippetModel: Identifiable {
    let id = UUID()
    let title: String
    let image: Image
    let destination: AnyView
}
