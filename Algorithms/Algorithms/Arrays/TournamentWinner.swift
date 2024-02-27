//
//  TournamentWinner.swift
//  Algorithms
//
//  Created by Elliot Rapp on 2/26/24.
//

import Foundation

class ScoreTracker {
var HOME_TEAM_WON = 1
    func tournmantWinner(_ comptitions: [[String]], _ results: [Int]) -> String {
        var currentBestTeam = ""
        var scores = [String: Int]()
        scores[currentBestTeam] = 0
        
        for (idx, comptition) in comptitions.enumerated() {
            var result = results[idx]
            var (homeTeam, awayTeam) = (comptition[0], comptition[1])
            
            
            var winningTeam = awayTeam
            if result == HOME_TEAM_WON {
                winningTeam = homeTeam
            }
            
            updateScores(winningTeam, 3, &scores)
            
            if scores[winningTeam]! > scores[currentBestTeam]! {
                currentBestTeam = winningTeam
            }
        }
        return currentBestTeam
    }
    
    func updateScores(_ team: String, _ points: Int,_ scores: inout [String: Int]) {
        if scores[team] == nil {
            scores[team] = 0
        }
        scores[team] = scores[team]! + points
    }
}
