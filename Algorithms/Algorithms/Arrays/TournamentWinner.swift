//
//  TournamentWinner.swift
//  Algorithms
//
//  Created by Elliot Rapp on 2/26/24.
//

import Foundation

//class ScoreTracker {
//  let HOME_TEAM_WON = 1
//    func tournamentWinner(_ competitions: [[String]],_ results: [Int]) -> String {
//        var currentBestTeam = ""
//        var scores = [String: Int]()
//        scores[currentBestTeam] = 0
//        
//        
//        for (idx, competition) in competitions.enumerated() {
//            let result = results[idx]
//            let (homeTeam, awayTeam) = (competitions[0], competitions[1])
//            
//            var winningTeam = awayTeam
//            if result == HOME_TEAM_WON {
//                winningTeam = homeTeam
//            }
//            
//            scoresCalculation(winningTeam, 3, &scores)
//            
//            if scores[winningTeam]! > scores[currentBestTeam]! {
//                currentBestTeam = winningTeam
//            }
//        }
//            return currentBestTeam
//        
//    }
//    
//    func scoresCalculation(_ team: String, _ points: Int, _ scores: inout [String: Int]) {
//        if scores[team] == nil {
//            scores[team] = 0
//        }
//        scores[team] = scores[team]! + points
//    }
//    
//}

