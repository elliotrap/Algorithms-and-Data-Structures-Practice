//
//  NthFibonacci.swift
//  Algorithms
//
//  Created by Elliot Rapp on 3/2/24.
//

import Foundation


func getNthFib(n: Int) -> Int {
  var lastTwo = [0, 1]
  var counter = 3
  while counter <= n {
    let nextFib = lastTwo[0] + lastTwo[1]
    lastTwo[0] = lastTwo[1]
    lastTwo[1] = nextFib
    counter = counter + 1
  }
  return n > 1 ? lastTwo[1] : lastTwo[0]
}

