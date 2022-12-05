//
//  MatchesView.swift
//  WorldCupTracker
//
//  Created by Charles Prado on 30/11/2022.
//

import SwiftUI

struct MatchesView: View {
    @EnvironmentObject var viewModel: MatchesViewModel
    
    var body: some View {
        NavigationView {
            List {
                Section("Current Match") {
                    currentMatchView
                }
                Section("Previous Matches") {
                    matchesView
                }
            }.navigationTitle("World Cup Tracker")
        }
    }
    
    @ViewBuilder
    private var currentMatchView: some View {
        if let currentMatch = viewModel.currentMatch {
            VStack {
                HStack {
                    MatchScoreView(teamData: currentMatch.homeTeam)
                    Spacer()
                    MatchScoreView(teamData: currentMatch.awayTeam)
                }
                Rectangle()
                    .foregroundColor(.green)
                    .frame(height: 10)
                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
            }
        } else {
            Text("There is no match in place...")
        }
    }
    
    @ViewBuilder
    private var matchesView: some View {
        if viewModel.matches.count > 0 {
            ForEach(viewModel.matches) { match in
                VStack {
                    MatchScoreView(teamData: match.homeTeam)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer(minLength: 1)
                    MatchScoreView(teamData: match.awayTeam)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }.padding(.vertical)
            }
        } else {
            Text("There are no previous matches yet...")
        }
    }
}

struct MatchesView_Previews: PreviewProvider {
    static var previews: some View {
        MatchesView()
            .environmentObject(
                MatchesViewModel(
                    currentMatch: .init(
                        homeTeam: .init(
                            teamCode: "br",
                            score: 3
                        ),
                        awayTeam: .init(
                            teamCode: "pt",
                            score: 2
                        ),
                        phase: .semifinals
                    ),
                    matches: [
                        .init(
                            homeTeam: .init(
                                teamCode: "nl",
                                score: 3
                            ),
                            awayTeam: .init(
                                teamCode: "us",
                                score: 1
                            ),
                            phase: .round16
                        ),
                        
                        .init(
                            homeTeam: .init(
                                teamCode: "jp",
                                score: 3
                            ),
                            awayTeam: .init(
                                teamCode: "hr",
                                score: 2
                            ),
                            phase: .round16
                        )
                    ]
                )
            )
    }
}
