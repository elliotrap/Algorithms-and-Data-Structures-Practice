//
//  DepthFirstSearch.swift
//  InterviewQuest
//
//  Created by Elliot Rapp on 2/21/24.
//
//completion count
// If I complete this code 3/3 times in a row then I move on to learning a new problem
// Completion: 0/3

import Foundation


class Node {
    var name: String
    var children: [Node]
    
    init(name: String) {
        self.name = name
        children = []
    }

    func addChildren(name: String) -> Node {
        var addChild = Node(name: name) // create node variable
        
        children.append(addChild) // append nodes to children array
        
        return self // return Node
    }

    func depthFirstSearch(array: inout [String]) -> [String] {
        array.append(name)
        
        for child in children {
            child.depthFirstSearch(array: &array)
        }
        
        return array
    }
}
