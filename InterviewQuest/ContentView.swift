//
//  ContentView.swift
//  InterviewQuest
//
//  Created by Elliot Rapp on 2/19/24.
//
//completion count
// If I complete this code 3/3 times in a row then I move on to learning a new problem
// Completion: 0/3

class Program {
  // This is an input class. Do not edit.
  class LinkedList: Hashable {
    var value: Int
    var next: LinkedList?

    init(value: Int) {
      self.value = value
    }

    func hash(into hasher: inout Hasher) {
      hasher.combine(ObjectIdentifier(self).hashValue)
    }

    static func == (left: LinkedList, right: LinkedList) -> Bool {
      return left === right
    }
  
      func middleNode(_ linkedList: LinkedList) -> LinkedList? {
          var counter = 0
          var currentNode: LinkedList? = linkedList
          
          while currentNode != nil {
              counter += 1
              currentNode = currentNode!.next
          }
          
          var middleNode: LinkedList? = currentNode?.next
          for i in 0 ..< (counter / 2) {
              middleNode = middleNode?.next
          }
          return middleNode
      }
  
  }
}

// make the counter that will divide the linked list
 // make the currentNode of the Linked list

 // make the while loop that iterates while its not none
    // increment the counter +1
     // increment the linked list plus one


 // set the middle node
 // make a for loop that cuts the linked list in half
     // set the middle node in the linked list

 // return the node in the middle of the linked list
