//
//  Memo.swift
//  SwiftUIMemo
//
//  Created by jungspin on 2023/01/18.
//

import Foundation
import SwiftUI

class Memo: Identifiable, ObservableObject {
    let id: UUID
    @Published var content: String
    let insertDate: Date
    
    init(content: String, insertDate: Date = Date.now) {
        self.id = UUID()
        self.content = content
        self.insertDate = insertDate
    }
}
