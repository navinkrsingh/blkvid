//
//  HackShortsApp.swift
//  HackShorts
//
//  Created by Singh, Navin on 19/03/23.
//

import SwiftUI

@main
struct HackShortsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            Player()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
