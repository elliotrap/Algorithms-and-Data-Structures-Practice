//
//  File.swift
//  Algorithms
//
//  Created by Elliot Rapp on 2/24/24.
//

import Foundation


func sortedSquaredArray(_ array: [Int]) -> [Int] {
    var sortedSquares = Array(repeating: 0, count: array.count)
    
    var smallerValueIdx = 0
    var largerValueIdx = array.count - 1
    
    for idx in stride(from: array.count, through: 0, by: -1) {
        let leftValue = array[smallerValueIdx]
        let rightValue = array[largerValueIdx]
        
        if abs(leftValue) > abs(rightValue) {
            sortedSquares[idx] = leftValue * leftValue
            smallerValueIdx += 1
        } else {
            sortedSquares[idx] = rightValue * rightValue
            largerValueIdx -= 1
        }
    }
    return sortedSquares
}
