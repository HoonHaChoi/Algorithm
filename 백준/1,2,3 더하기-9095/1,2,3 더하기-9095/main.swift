//
//  main.swift
//  1,2,3 더하기-9095
//
//  Created by HOONHA CHOI on 2021/07/16.
//

import Foundation
// MARK: 1,2,3 더하기-9095
let t = Int(readLine()!)!
var arr: [Int] = []

for _ in 0..<t {
    arr.append(Int(readLine()!)!)
}

// 0 ~ 11까지
var d: [Int] = .init(repeating: 0, count: 12)

d[0] = 0
d[1] = 1
d[2] = 2
d[3] = 4
d[4] = 7

for i in 5...11 {
    d[i] = d[i-1] + d[i-2] + d[i-3]
}

for i in arr {
    print(d[i])
}
