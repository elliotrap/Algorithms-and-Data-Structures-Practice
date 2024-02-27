//
//  DepthFirstSearch.swift
//  Algorithms
//
//  Created by Elliot Rapp on 2/22/24.
//

import Foundation

class Node {
    var name: String
    var children: [Node]
    
    init(name: String) {
        self.name = name
        children = []
    }
    
    
    func addNode(root: Node) -> Node {
        var addChildren = Node(name: name)
        
        children.append(addChildren)
        
        return self
    }
    
    func depthFirstSearch(array: inout [String])  {
        array.append(name)
        
        for child in children {
            depthFirstSearch(array: &array)
        }
    }
}
