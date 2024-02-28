//
//  EvaluateExpressionTree.swift
//  Algorithms
//
//  Created by Elliot Rapp on 2/23/24.
//

import Foundation

// This is an input class. Do not edit.
class BinaryTree {
    var value: Int
    var left: BinaryTree?
    var right: BinaryTree?
    
    init(value: Int) {
        self.value = value
        left = nil
        right = nil
    }
    
    
    func evaluateExpressionTree(_ tree: BinaryTree) -> Int {
        
        if tree.value > 0 {
            return tree.value
        }
        
        var leftNode = evaluateExpressionTree(tree.left!)
        var rightNode = evaluateExpressionTree(tree.right!)
       
        
        if tree.value == -1 {
            return leftNode + rightNode
        }
        if tree.value == -2 {
            return leftNode + rightNode
        }
        if tree.value == -3 {
            return leftNode / rightNode
        }
        return leftNode * rightNode
    }
}
