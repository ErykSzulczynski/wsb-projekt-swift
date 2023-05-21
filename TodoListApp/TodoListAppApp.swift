//
//  TodoListAppApp.swift
//  TodoListApp
//
//  Created by Eryk Szułczyński on 30/02/1402 AP.
//

import SwiftUI

@main
struct TodoListAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        
        let context = persistenceController.container.viewContext
        let dateHolder = DateHolder(context)
        
        WindowGroup {
            TaskListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(dateHolder)
        }
    }
}
