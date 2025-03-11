//
//  SwiftDataProjectApp.swift
//  SwiftDataProject
//
//  Created by Carlos Eduardo Witte on 11/03/25.
//

import SwiftUI
import SwiftData

@main
struct SwiftDataProjectApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: User.self)
    }
}
