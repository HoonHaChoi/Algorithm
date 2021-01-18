//
//  main.swift
//  ATM-11399
//
//  Created by HOONHA CHOI on 2021/01/18.
//

import Foundation

let input = Int(readLine()!)!
let time = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()

var sum = 0

for i in 0..<time.count {
    sum += time[0...i].reduce(0, { $0 + $1 })
}
print(sum)
