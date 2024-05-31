//
//  MyPersistenceController.swift
//  TestCoreDataSwiftUI
//
//  Created by Sidney MALEO on 27/05/2024.
//

import CoreData

struct MyPersistenceController {
    static let shared = MyPersistenceController()
    
    let appName = "TestCoreDataSwiftUI"
    let urlPath = "/dev/null"
    let container: NSPersistentContainer
    
    init(inMemory: Bool = false) {
        self.container = NSPersistentContainer(name: appName)
        if inMemory {
            let stores = container.persistentStoreDescriptions
            if let first = stores.first {
                first.url = URL(fileURLWithPath: urlPath)
            }
        }
        container.viewContext.automaticallyMergesChangesFromParent = true
        container.loadPersistentStores(completionHandler: loadCompletion)
    }
    
    func loadCompletion(store: NSPersistentStoreDescription, error: Error?) {
        if let e = error {
            print(e.localizedDescription)
        }
    }
    
}
