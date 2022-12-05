//
//  MatchData.swift
//  WorldCupTracker
//
//  Created by Charles Prado on 30/11/2022.
//

import Foundation

struct Match: Identifiable, Codable {
    let id = UUID()
    var homeTeam: MatchTeam
    var awayTeam: MatchTeam
    var phase: MatchPhase
    
    enum CodingKeys: String, CodingKey {
        case homeTeam
        case awayTeam
        case phase
    }
}
