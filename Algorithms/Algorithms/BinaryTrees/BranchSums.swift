//
//  BranchSums.swift
//  Algorithms
//
//  Created by Elliot Rapp on 2/22/24.
//

import Foundation


class Program {
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
        
        sums.append(calculateBranchSums(node: root, runningSum: 0, sums: &sums))
        
        return sums
    }
    
    func calculateBranchSums(node: BST?, runningSum: Int, sums: inout [Int]) {
        if let n = node {
            var newRunningSum = runningSum + n.value
            if n.left == nil && n.right == nil {
                sums.append(newRunningSum)
                return
            }
            calculateBranchSums(node: n.left, runningSum: newRunningSum, sums: &sums)
            calculateBranchSums(node: n.right, runningSum: newRunningSum, sums: &sums)

        }
    }
}
