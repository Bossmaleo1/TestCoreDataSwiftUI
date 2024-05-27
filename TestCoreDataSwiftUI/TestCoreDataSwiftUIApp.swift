//
//  TestCoreDataSwiftUIApp.swift
//  TestCoreDataSwiftUI
//
//  Created by Sidney MALEO on 27/05/2024.
//

import SwiftUI

@main
struct TestCoreDataSwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
