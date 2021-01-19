//
//  main.swift
//  게임을 만든 동준이-2847
//
//  Created by HOONHA CHOI on 2021/01/19.
//

import Foundation

let input = Int(readLine()!)!
var score = [Int]()
for _ in 0..<input {
    score.append(Int(readLine()!)!)
}

score = Array(score.reversed())

var count = 0
for i in 1..<score.count {
    while score[i] > score[i - 1] || score[i] == score[i - 1] {
        score[i] -= 1
        count += 1
        
    }
}
print(count)
