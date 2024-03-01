//
//  MiddleNode.swift
//  Algorithms
//
//  Created by Elliot Rapp on 2/24/24.
//

import Foundation


//class LinkedList: Hashable {
//  var value: Int
//  var next: LinkedList?
//
//  init(value: Int) {
//    self.value = value
//  }
//
//  func hash(into hasher: inout Hasher) {
//    hasher.combine(ObjectIdentifier(self).hashValue)
//  }
//
//  static func == (left: LinkedList, right: LinkedList) -> Bool {
//    return left === right
//  }
//}
//
//func middleNode(_ linkedList: LinkedList) -> LinkedList? {
//    var counter = 0
//    var currentNode: LinkedList? = linkedList
//    
//    while currentNode != nil {
//        counter += 1
//        currentNode = currentNode!.next
//    }
//    
//    var middleNode: LinkedList? = linkedList
//    
//    for i in 0 ..< (counter / 2) {
//        middleNode = middleNode!.next
//    }
//    
//    return middleNode
//}

