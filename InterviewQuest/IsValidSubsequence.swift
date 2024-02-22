//
//  IsValidSubsequence.swift
//  InterviewQuest
//
//  Created by Elliot Rapp on 2/21/24.
//
//completion count
// If I complete this code 3/3 times in a row then I move on to learning a new problem
// Completion: 0/3
import Foundation

 func isValidSubsequence(_ array: [Int],_ sequence: [Int]) -> Bool {
    
    var arrIdx = 0
    var seqIdx = 0
    
    while arrIdx < array.count && seqIdx < array.count {
        if array[arrIdx] == sequence[seqIdx] {
            seqIdx += 1
        }
        arrIdx += 1
    }
    return seqIdx == sequence.count
}
