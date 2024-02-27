//
//  TwoNumberSum.swift
//  Algorithms
//
//  Created by Elliot Rapp on 2/22/24.
//

import Foundation

func towNumberSum(array: inout [Int], targetSum: Int) -> [Int] {
    array.sort()
    
    var leftPointer = 0
    var rightPointer = array.count - 1
    
    while leftPointer < rightPointer {
        var leftMost = array[leftPointer]
        var rightMost = array[rightPointer]
        let currentSum = leftMost + rightMost
        if currentSum == targetSum {
            return [leftMost, rightMost]
        } else if currentSum < targetSum {
            leftPointer = leftPointer + 1
        } else if currentSum > targetSum {
            rightPointer = rightPointer - 1
        }
    }
    return []
}
