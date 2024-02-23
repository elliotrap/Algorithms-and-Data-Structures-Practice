//
//  insertionSort.swift
//  Algorithms
//
//  Created by Elliot Rapp on 2/22/24.
//

import Foundation


func insertionSort(array: inout [Int])  {
    for i in 1 ..< array.count {
        var j = i
        while j > 0, array[j] < array[j - 1] {
            let temp = array[j - 1]
            array[j - 1] = array[j]
            array[j] = temp
            j = j - 1
        }
    }
}


