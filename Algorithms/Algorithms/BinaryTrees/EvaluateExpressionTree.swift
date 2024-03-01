//
//  EvaluateExpressionTree.swift
//  Algorithms
//
//  Created by Elliot Rapp on 2/23/24.
//

import Foundation

// This is an input class. Do not edit.
// class BinaryTree {
    var value: Int
    var left: BinaryTree?
    var right: BinaryTree?
    
    init(value: Int) {
        self.value = value
        left = nil
        right = nil
    }
    
    
    func evaluateExpression(tree: BinaryTree) -> Int {
        while tree.value > 0 {
            return tree.value
        }
        
        var leftValue = evaluateExpression(tree: tree.left!)
        var rightValue = evaluateExpression(tree: tree.right!)
        
        if tree.value == -1 {
            return leftValue + rightValue
        }
        if tree.value == -2 {
        return leftValue - rightValue
        }
        if tree.value == -3 {
            return leftValue * rightValue
        }
        return leftValue / rightValue
    }
}
