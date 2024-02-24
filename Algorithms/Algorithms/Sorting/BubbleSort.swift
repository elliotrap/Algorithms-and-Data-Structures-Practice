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
    
    
    
    func branchSums(root: BST?) -> [Int] {
        var sums = [Int]()
     calculateBranchSums(node: root, branchSums: 0, sums: &sums)
        
        return sums
    }
    
    func calculateBranchSums(node: BST?,branchSums: Int, sums: inout [Int]) {
        if let n = node {
            var newBranchSums = branchSums + n.value
            if n.left == nil && n.right == nil {
               return sums.append(newBranchSums)
            }
            calculateBranchSums(node: n.left, branchSums: newBranchSums, sums: &sums)
            calculateBranchSums(node: n.left, branchSums: newBranchSums, sums: &sums)

        }
    }
}
