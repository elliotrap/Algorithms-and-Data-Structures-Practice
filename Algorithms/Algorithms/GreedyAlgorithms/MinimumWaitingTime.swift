//
//  TotalWaitingTime.swift
//  Algorithms
//
//  Created by Elliot Rapp on 2/23/24.
//

import Foundation


func minimumWaitingTime(_ queries: [Int]) -> Int {
    var totalWaitingTime = 0
    for (idx, duration) in queries.enumerated() {
        var queriesLeft = queries.count - (idx + 1)
        totalWaitingTime += duration * queriesLeft
    }
    return totalWaitingTime
}
