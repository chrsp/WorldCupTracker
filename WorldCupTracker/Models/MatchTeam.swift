//
//  MatchTeamData.swift
//  WorldCupTracker
//
//  Created by Charles Prado on 30/11/2022.
//

import Foundation

struct MatchTeam: Identifiable, Codable {
    let id = UUID()
    var teamCode: String
    var teamName: String {
        teamCode.countryName() ?? ""
    }
    var score: Int
    
    enum CodingKeys: String, CodingKey {
        case teamCode
        case score
    }
}
