//
//  insertionSort.swift
//  Algorithms
//
//  Created by Elliot Rapp on 2/22/24.
//

import Foundation


func insertionSort(array: inout [Int]) -> [Int] {
    for i in 1 ..< array.count {
        var j = i
        if j > 0 && array[j] < array[j - 1] {
             swap(j, j - 1, &array)
            j = j - 1
        }
    }
    return array
}

func swap(_ firstIndex: Int,_ secondIndex: Int, _ array: inout [Int]) {
        var temp = array[secondIndex]
        array[secondIndex] = array[firstIndex]
        array[firstIndex] = temp
}

// first index is j the index above the second index
//       [j] first index
//        V
// [1,5,6,2,8,4,8]   swap firstIndex with secondIndex ==
//      ^
//     [j - 1] second index
// secondIndex is j + 1 you swap with firstIndex
// It's confusing because the first index comes after the second index
// the temp variable is a placeholder for the swap to make the next swap
