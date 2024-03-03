//
//  BubbleSort.swift
//  Algorithms
//
//  Created by Elliot Rapp on 2/22/24.
//

import Foundation
    

func bubbleSort(_ array: inout [Int]) -> [Int] {
    var counter = 0
    var isSorted = false
    
    while !isSorted {
        isSorted = true
        for i in 0 ..< array.count - 1 - counter {
            if array[i] > array[i + 1] {
                // swap(i, i + 1, array)
                isSorted = false
            }
        }
        counter = counter + 1
    }
    return array
}

func sort(_ firstIndex: Int, _ secondIndex: Int, _ array: inout [Int]) {
    var temp = array[secondIndex]
    array[firstIndex] = array[secondIndex]
    array[secondIndex] = temp
}
