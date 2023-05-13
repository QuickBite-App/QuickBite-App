//
//  QuickBite_AppApp.swift
//  QuickBite App
//
//  Created by Folarin Akinloye on 22/04/2023.
//

import SwiftUI
import FirebaseCore

@main
struct QuickBite_AppApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
                    .accentColor(Color.black)
            }
        }
    }
}
