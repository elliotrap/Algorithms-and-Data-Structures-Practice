//
//  InsertionSort.swift
//  Algorithms
//
//  Created by Elliot Rapp on 2/24/24.
//

import Foundation

func sortedSquaredArray(array: inout [Int]) -> [Int] {
    var sortedSquares = Array(repeating: 0, count: array.count)
    
    var smallerValueIdx = 0
    var largerValueIdx = array.count
    
    for idx in stride(from: array.count - 1, through: 0, by: -1) {
        
        var smallerValue = array[smallerValueIdx]
        var largerValue = array[largerValueIdx]
        
        if abs(smallerValue) > abs(largerValue) {
            sortedSquares[idx] = smallerValue * smallerValue
            smallerValueIdx += 1

        } else  {
            sortedSquares[idx] = largerValue * largerValue
            largerValueIdx -= 1
            
        }
    }
    
    return sortedSquares
}
