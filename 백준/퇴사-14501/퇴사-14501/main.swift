//
//  main.swift
//  퇴사-14501
//
//  Created by HOONHA CHOI on 2021/09/20.
//

import Foundation

// MARK: 퇴사 - 14501
let n = Int(readLine()!)!
var time: [Int] = .init(repeating: 0, count: 17)
var point: [Int] = .init(repeating: 0, count: 17)
var d: [Int] = .init(repeating: 0, count: 17)

for i in 0..<n{
    let a = readLine()!.split(separator: " ").map { Int(String($0))! }
    time[i] = a[0]
    point[i] = a[1]
    d[i] = a[1]
}

for i in 1..<n {
    for j in 0..<i {
        if i - j >= time[j] {
            d[i] = max(point[i] + d[j], d[i])
        }
    }
}

var maxValue = 0
for i in 0..<n {
    if i + time[i] < n+1 {
        if maxValue < d[i] {
            maxValue = d[i]
        }
    }
}
print(maxValue)
