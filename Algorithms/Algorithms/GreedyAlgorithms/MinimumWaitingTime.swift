//
//  TotalWaitingTime.swift
//  Algorithms
//
//  Created by Elliot Rapp on 2/23/24.
//

import Foundation


func minimumWaitingTime(queries: inout [Int]) -> Int {
    queries.sort()
    var totalWaitingTime = 0
    for (idx, duration) in queries.enumerated() {
        let queriesLeft = queries.count - (idx + 1)
        totalWaitingTime += queriesLeft * duration
    }
    return totalWaitingTime
}
