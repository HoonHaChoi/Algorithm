//
//  main.swift
//  TapeEquilibrium
//
//  Created by HOONHA CHOI on 2021/08/03.
//

import Foundation

public func solution(_ A : inout [Int]) -> Int {
    var p1 = 0
    var p2 = A.reduce(0, +)
    var minValue = 10000000
    for i in 1..<A.count {
        
        p1 += A[i-1]
        p2 -= A[i-1]
        let absValue = abs(p1 - p2)
        
        if minValue > absValue {
            minValue = absValue
        }
    }
    return minValue
}

var A = [1,2]
print(solution(&A))
