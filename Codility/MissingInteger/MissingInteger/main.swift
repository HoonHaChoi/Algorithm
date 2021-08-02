//
//  main.swift
//  MissingInteger
//
//  Created by HOONHA CHOI on 2021/08/02.
//

import Foundation
// MARK: MissingInteger
var A = [1,3,6,4,1,2]
var B = [1,2,3]
public func solution(_ A : inout [Int]) -> Int {
    var arr = A.filter { $0 > 0 }
    var set: [Int] = Set(arr).sorted()
    
    if set.isEmpty {
        return 1
    }
    
    var dummy: [Int] = .init(repeating: 0, count: 1000001)
    dummy[0] = 100000
    for i in 0..<set.count {
        dummy[set[i]] = set[i]
    }
    
    return dummy.firstIndex(of: 0)!
}
solution(&A)
solution(&B)
