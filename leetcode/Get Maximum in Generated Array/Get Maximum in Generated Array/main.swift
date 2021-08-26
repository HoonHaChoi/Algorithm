//
//  main.swift
//  Get Maximum in Generated Array
//
//  Created by HOONHA CHOI on 2021/08/26.
//

import Foundation

// MARK: Get Maximum in Generated Array
func getMaximumGenerated(_ n: Int) -> Int {
    var d: [Int] = .init(repeating: 0, count: 101)
    d[0] = 0
    d[1] = 1
    d[2] = 1
    
    for i in 3..<101 {
        if i % 2 == 0 {
            d[i] = d[i/2]
        } else {
            d[i] = d[(i-1)/2]+d[(i+1)/2]
        }
    }
    return d[0...n].max()!
}
print(getMaximumGenerated(7))
print(getMaximumGenerated(2))
print(getMaximumGenerated(3))
print(getMaximumGenerated(4))
