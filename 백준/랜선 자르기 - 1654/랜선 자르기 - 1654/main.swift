//
//  main.swift
//  랜선 자르기 - 1654
//
//  Created by HOONHA CHOI on 2021/11/17.
//

import Foundation

// MARK: 랜선 자르기 - 1654
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let k = input[0]
let n = input[1]
var lengths: [Int] = []

(0..<k).forEach { _ in
    lengths.append(Int(readLine()!)!)
}

var start = 0
var end = lengths.max()!
var maxLength = 0

while start <= end {
    
    let mid = (start+end) / 2
    let length = lengths.map { $0 / mid }.reduce(0, +)
    
    if length >= n {
        maxLength = max(maxLength, mid)
    }
    
    if length < n {
        end = mid - 1
    } else {
        start = mid + 1
    }
}
print(maxLength)
