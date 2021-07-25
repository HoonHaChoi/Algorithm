//
//  main.swift
//  입국 심사
//
//  Created by HOONHA CHOI on 2021/07/25.
//

import Foundation
// MARK: 입국 심사
func solution(_ n:Int, _ times:[Int]) -> Int {
    
    // 가장 긴 시간의 심사관
    let timeMax = times.max() ?? 0
    
    print(timeMax)
    var start = 0
    // 가장 긴 심사관 * n 명 = ex 10 * 6 = 60
    var end = timeMax * n
    
    var result = 0
    while start <= end {
        let mid = (start+end) / 2
        let time = times.map({ mid/$0 }).reduce(0, +)
        if n < time {
            result = mid
            end = mid-1
        } else {
            start = mid+1
        }
    }
    
    return result
}
solution(6, [7,10])
