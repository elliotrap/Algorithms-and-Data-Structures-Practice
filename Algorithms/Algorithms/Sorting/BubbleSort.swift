//
//  BubbleSort.swift
//  Algorithms
//
//  Created by Elliot Rapp on 2/22/24.
//

import Foundation
class BST {
    var value: Int
    var left: BST?
    var right: BST?
    
    init(value: Int) {
        self.value = value
    }
    
    func branchSums(root: BST) -> [Int] {
        var sums = [Int]()
        
        calculateBranchSums(node: root, runningSum: 0, sums: &sums)
        
        return sums
    }
//                                                                               function body  |
    func calculateBranchSums(node: BST?, runningSum: Int, sums: inout [Int]) { //               V
        if let n = node {
            let newRunningSum = runningSum + node!.value // node is a property of BST so I can use ".value"
            if n.left == nil && n.right == nil {
                sums.append(newRunningSum)
                return
            }
            calculateBranchSums(node: node?.left, runningSum: newRunningSum, sums: &sums)
            calculateBranchSums(node: node?.right, runningSum: newRunningSum, sums: &sums)
        }
    }
}
