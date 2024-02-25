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
    
    func appendChildren(root: String) -> Node {
        var addChild = Node(name: root)
        
        children.append(addChild)
        
        return self
    }
    
    func depthFirstSearch(array: inout [String]) -> [String] {
        array.append(name)
        
        for child in children {
            depthFirstSearch(array: &array)
        }
        return array
    }
}
