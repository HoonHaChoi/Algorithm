//
//  main.swift
//  바닥 공사
//
//  Created by HOONHA CHOI on 2021/07/14.
//

import Foundation
// MARK: 바닥공사
let n = Int(readLine()!)!

var d = Array.init(repeating: 0, count: n+1)

d[1] = 1
d[2] = 3

for i in (3...n) {
    d[i] = (d[i-1] + d[i-2] * 2) % 796796
}
print(d[n])
