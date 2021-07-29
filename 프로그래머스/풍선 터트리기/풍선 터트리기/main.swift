//
//  main.swift
//  풍선 터트리기
//
//  Created by HOONHA CHOI on 2021/07/29.
//

import Foundation
// MARK: 풍선 터트리기
func solution(_ a:[Int]) -> Int {
    
    var l: [Int] = .init(repeating: 0, count: a.count)
    var r: [Int] = .init(repeating: 0, count: a.count)
    l[0] = a[0]
    r[a.count-1] = a[a.count-1]
    
    var answer = 0
    
    for i in 1..<a.count {
        l[i] = min(l[i-1], a[i])
        r[a.count-i-1] = min(r[a.count-i], a[a.count-i])
    }
    for i in 0..<a.count {
        if l[i] >= a[i] || r[i] >= a[i] {
            answer += 1
        }
        
    }
    return answer
}

solution([9,-1,-5])
//print(solution([-16,27,65,-2,58,-92,-71,-68,-61,-33]))
