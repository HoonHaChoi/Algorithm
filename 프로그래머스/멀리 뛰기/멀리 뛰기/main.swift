//
//  main.swift
//  멀리 뛰기
//
//  Created by HOONHA CHOI on 2021/07/21.
//

import Foundation
// MARK: 멀리뛰기
func solution(_ n:Int) -> Int {
    var d: [Int] = Array(repeating: 0,count: n+1)
    
    if n < 4 {
        return n
    }
    d[0] = 0
    d[1] = 1
    d[2] = 2
    d[3] = 3
    
    for i in 4...n {
        d[i] = (d[i-1] + d[i-2])%1234567
    }
    
    return d[n]
    
    // MARK: 재귀풀이(시간초과)
    // if n < 4 {
    //     return n
    // }
    // return (solution(n-1) + solution(n-2))%1234567
}
