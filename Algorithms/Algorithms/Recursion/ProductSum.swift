//
//  ProductSum.swift
//  Algorithms
//
//  Created by Elliot Rapp on 2/27/24.
//

import Foundation
func productSum(_ array: [Any], _ multiplier: Int = 1) -> Int {
    var sum = 0
    
    for element in array {
        if let elementIsArray = element as? [Any] {
            sum += productSum(elementIsArray, multiplier + 1)
        } else if let elementIsInt = element as? Int {
            sum += elementIsInt
        }
    }
    return sum * multiplier
}
