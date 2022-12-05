//
//  MatchesViewModel.swift
//  WorldCupTracker
//
//  Created by Charles Prado on 30/11/2022.
//

import Foundation

class MatchesViewModel: ObservableObject {
    @Published var currentMatch: Match?
    @Published var matches: [Match]
    
    init(currentMatch: Match? = nil,
         matches: [Match]
    ) {
        self.currentMatch = currentMatch
        self.matches = matches
    }
}

// MARK: - Update Methods
extension MatchesViewModel {
    func update(_ matches: [Match]) {
        self.matches = matches
    }
    
    func update(_ currentMatch: Match) {
        self.currentMatch = currentMatch
    }
}
