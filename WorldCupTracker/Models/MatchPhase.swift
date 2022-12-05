//
//  MatchPhase.swift
//  WorldCupTracker
//
//  Created by Charles Prado on 05/12/2022.
//

import Foundation

enum MatchPhase: String, Codable {
    case groups
    case round16
    case quarters
    case semifinals
    case final
    
    var title: String {
        switch self {
        case .groups:
            return "Group "
        case .round16:
            return "Round of 16"
        case .quarters:
            return "Quarter-Finals"
        case .semifinals:
            return "Semi-finals"
        case .final:
            return "Final"
        }
    }
}
