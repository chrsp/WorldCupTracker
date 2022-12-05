//
//  WorldCupTrackerApp.swift
//  WorldCupTracker
//
//  Created by Charles Prado on 30/11/2022.
//

import SwiftUI

@main
struct WorldCupTrackerApp: App {
    @UIApplicationDelegateAdaptor private var appDelegate: AppDelegate 
    @StateObject var state = AppState.shared
    
    var body: some Scene {
        WindowGroup {
            MatchesView()
                .environmentObject(AppState.shared.matches)
        }
    }
}
