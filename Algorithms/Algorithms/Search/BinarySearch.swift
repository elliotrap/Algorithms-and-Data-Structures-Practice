//
//  BinarySearch.swift
//  Algorithms
//
//  Created by Elliot Rapp on 2/27/24.
//

import Foundation

func binarySearch(array: [Int], target: Int) -> Int {
    var leftPointer = 0
    var rightPointer = array.count - 1

    return binarySearchHelper(array: array, target: target, leftPointer: &leftPointer, rightPointer: &rightPointer)
}

func binarySearchHelper(array: [Int], target: Int, leftPointer: inout Int, rightPointer: inout Int) -> Int {
    while leftPointer <= rightPointer {
        let middle = (leftPointer + rightPointer) / 2
        let potientialMatch = middle
        if target == potientialMatch {
            return middle
        } else if target > potientialMatch {
            rightPointer = middle - 1
        } else {
            leftPointer = middle + 1
        }
    }
    return -1
}

        

    

