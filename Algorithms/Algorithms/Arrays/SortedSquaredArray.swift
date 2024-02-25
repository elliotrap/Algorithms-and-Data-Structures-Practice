//
//  File.swift
//  Algorithms
//
//  Created by Elliot Rapp on 2/24/24.
//

import Foundation



func sortedSquaredArray(_ array: [Int]) -> [Int] {
    var sortedSquares = Array(repeating: 0, count: array.count)
    
    var smallerValue = 0
    var largerValue = array.count - 1
    
    for idx in stride(from: array.count - 1, to: 0, by: 1) {
        var smallerValueIdx = array[smallerValue]
        var largerValueIdx = array[largerValue]
        if abs(largerValue) > abs(largerValue) {
            sortedSquares[idx] = smallerValueIdx * smallerValueIdx
            smallerValue += 1
        } else {
            sortedSquares[idx] = largerValueIdx * largerValueIdx
            largerValue -= 1
        }
    }
    return sortedSquares
}
