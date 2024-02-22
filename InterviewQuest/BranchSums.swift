//
//  BranchSums.swift
//  InterviewQuest
//
//  Created by Elliot Rapp on 2/21/24.
//

import Foundation


    class BST {
        var value: Int
        var left: BST?
        var right: BST?
        
        init(value: Int) {
            self.value = value
        }
    }
    
    func branchSums(root: BST) -> [Int] {
        var sums = [Int]()
        calculateBrachSums(node: root, runningSum: 0, sums: &sums)
        return sums
    }

    
    func calculateBrachSums(node: BST?, runningSum: Int, sums: inout [Int]) {
        if let n = node {
           var newRunningSum = runningSum + n.value
            if n.left == nil, n.right == nil {
                sums.append(newRunningSum)
                return
            }
            calculateBrachSums(node: n.left, runningSum: newRunningSum, sums: &sums)
            calculateBrachSums(node: n.right, runningSum: newRunningSum, sums: &sums)

        }
    }



