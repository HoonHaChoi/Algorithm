//
//  main.swift
//  부녀회장이 될테야-2775
//
//  Created by HOONHA CHOI on 2021/07/17.
//

import Foundation
// MARK: 부녀회장이 될테야-2775
let t = Int(readLine()!)!

var k: [Int] = []
var n: [Int] = []

for _ in 0..<t {
    k.append(Int(readLine()!)!)
    n.append(Int(readLine()!)!)
}

var d: [[Int]] = .init(repeating: .init(repeating: 0, count: 15), count: 15)
for i in 0...14 {
    d[0][i] = i
}

for i in 1...14 {
    for j in 1...14 {
        d[i][j] = d[i-1][1...j].reduce(0, +)
    }
}

for i in 0..<t {
    let k = k[i]
    let n = n[i]
    print(d[k][n])
}
