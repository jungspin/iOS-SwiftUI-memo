//
//  SwiftUIMemoApp.swift
//  SwiftUIMemo
//
//  Created by jungspin on 2023/01/18.
//

import SwiftUI

@main
struct SwiftUIMemoApp: App {
    @StateObject var store = MemoStore()
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(store) // mainListView, 이어지는 뷰에서도 동일한 객체를 쉽게 사용 가능
        }
    }
}
