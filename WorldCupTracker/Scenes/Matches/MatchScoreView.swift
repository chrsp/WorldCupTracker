//
//  MatchView.swift
//  WorldCupTracker
//
//  Created by Charles Prado on 05/12/2022.
//

import SwiftUI

struct MatchScoreView: View {
    var teamCode: String
    var teamName: String
    var teamScore: Int
    
    init(teamData: MatchTeam) {
        self.teamCode = teamData.teamCode
        self.teamName = teamData.teamName
        self.teamScore = teamData.score
    }
    
    var body: some View {
        Text("\(teamCode.toFlag()) \(teamName) (\(teamScore))")
    }
}
