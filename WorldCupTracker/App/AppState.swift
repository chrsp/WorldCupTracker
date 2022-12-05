//
//  AppState.swift
//  WorldCupTracker
//
//  Created by Charles Prado on 30/11/2022.
//

import Foundation

class AppState: ObservableObject {
    static let shared = AppState()

    @Published var matches: MatchesViewModel = .init(matches: [])
}
