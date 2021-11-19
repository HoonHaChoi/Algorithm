//
//  main.swift
//  벌집 - 2292
//
//  Created by HOONHA CHOI on 2021/11/19.
//

import Foundation

// MARK: 벌집 - 2292
let n = Int(readLine()!)!

func solution(_ n: Int) -> Int {
    
    if n == 1 {
        return 1
    }
    
    let six = 6
    var count = 1
    var hive = (six*count)+1
    var result = 0
    
    for i in 2...n {
        if i > hive {
            count += 1
            hive += six*count
        }
        if i == n {
            result = count+1
        }
    }
    
    return result
}

print(solution(n))
