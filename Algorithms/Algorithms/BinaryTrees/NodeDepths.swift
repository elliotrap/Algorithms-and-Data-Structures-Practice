//
//  NodeDepths.swift
//  Algorithms
//
//  Created by Elliot Rapp on 2/28/24.
//

import Foundation

class this {
    class BinaryTree {
        var value: Int
        var left: BinaryTree?
        var right: BinaryTree?
        
        init(value: Int) {
            self.value = value
        }
    }
    
    struct Level {
        var root: BinaryTree?
        var depth: Int
    }
    
  static  func nodeDepths(_ root: BinaryTree?) -> Int {
        var sumOfDepth = 0
        var stack: [Level] = [Level(root: root, depth: 0)]
        while stack.count > 0 {
                var top = stack[stack.count - 1]
            stack.removeLast()
            
            var depth = top.depth
            if let node = top.root {
                sumOfDepth += depth
                stack.append(Level(root: node.left, depth: depth + 1))
                stack.append(Level(root: node.right, depth: depth + 1))

            }
        }
    }
}
