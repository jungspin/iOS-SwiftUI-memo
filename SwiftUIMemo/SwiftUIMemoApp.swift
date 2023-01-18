//
//  SwiftUIMemoApp.swift
//  SwiftUIMemo
//
//  Created by jungspin on 2023/01/18.
//

import SwiftUI

@main
struct SwiftUIMemoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
