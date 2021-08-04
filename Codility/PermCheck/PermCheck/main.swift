//
//  main.swift
//  PermCheck
//
//  Created by HOONHA CHOI on 2021/08/04.
//

import Foundation
// MARK: PermCheck
public func solution(_ A : inout [Int]) -> Int {

    var hash: [Int: Int] = [:]
    for i in A {
        hash[i] = i
    }
    for i in 1...A.count {
        if hash[i] == nil {
            return 0
        }
    }
    return 1
        
    // 1차 시도 풀이
    //    var d: [Int] = .init(repeating: 0, count: 100001)
    //    if d[1...A.count].filter({ $0 == 0 }).isEmpty {
    //        return 1
    //    }
    //    return 0
}
var A = [4,2,1,3]
print(solution(&A))
