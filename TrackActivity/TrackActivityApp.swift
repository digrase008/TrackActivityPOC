//
//  TrackActivityApp.swift
//  TrackActivity
//
//  Created by apple on 10/06/24.
//

import SwiftUI
import Firebase

@main
struct TrackActivityApp: App {
    
    init() {
            FirebaseApp.configure()
        }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
