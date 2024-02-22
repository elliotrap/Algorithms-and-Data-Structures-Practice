//
//  BubbleSort.swift
//  InterviewQuest
//
//  Created by Elliot Rapp on 2/21/24.
//
//completion count
// If I complete this code 3/3 times in a row then I move on to learning a new problem
// Completion: 0/3

import Foundation


func bubbleSort(array: inout [Int]) -> [Int] {
    var isSorted = false
    var counter = 0
    
    while !isSorted {
        isSorted = true
        for i in 0 ..< array.count - 1 - counter {
            if array[i] > array[i + 1] {
                var temp = array[i + 1]
                array[i + 1] = array[i]
                array[i] = temp
            }
        }
        counter = counter + 1

    }
    return array
}
