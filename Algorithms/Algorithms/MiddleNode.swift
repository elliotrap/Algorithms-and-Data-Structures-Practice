//
//  MiddleNode.swift
//  Algorithms
//
//  Created by Elliot Rapp on 2/23/24.
//

import Foundation




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
        
        let leftValue = evaluateExpressionTree(tree.left!)
        let rightValue = evaluateExpressionTree(tree.right!)
        
        if tree.value >= 0 {
            return tree.value
        }
        
        if tree.value == -1 {
            return leftValue + rightValue
        }
        if tree.value == -2 {
            return leftValue - rightValue
        }
        if tree.value == -3 {
            return leftValue / rightValue
        }
        return leftValue * rightValue
        
    }
    
}
