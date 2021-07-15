//
//  main.swift
//  효율적인 화폐 구성
//
//  Created by HOONHA CHOI on 2021/07/15.
//

import Foundation
// MARK: 효율적인 화폐 구성
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let m = input[1]

var prices: [Int] = []

for _ in 0..<n {
    prices.append(Int(readLine()!)!)
}

var d: [Int] = .init(repeating: 10001, count: m+1)

d[0] = 0

for i in prices {
    for j in 1...m {
        if j-i < 0 {
            continue
        }
        d[j] = min(d[j] , d[j-i]+1)
    }
}


if d[m] == 10001 {
    print(-1)
}
else {
    print(d[m])
}

//2 15
//2
//3

//3 4
//3
//5
//7

//3 7
//2
//3
//5

