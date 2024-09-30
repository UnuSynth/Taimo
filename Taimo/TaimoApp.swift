//
//  TaimoApp.swift
//  Taimo
//
//  Created by Amantay Abdyshev on 28/9/24.
//

import SwiftUI
import SwiftData
import UI

@main
struct TaimoApp: App {
//    var sharedModelContainer: ModelContainer = {
//        let schema = Schema([
//            Item.self,
//        ])
//        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)
//
//        do {
//            return try ModelContainer(for: schema, configurations: [modelConfiguration])
//        } catch {
//            fatalError("Could not create ModelContainer: \(error)")
//        }
//    }()

    var body: some Scene {
        WindowGroup {
            MainTabView()
        }
//        .modelContainer(sharedModelContainer)
    }
}
