//
//  main.swift
//  개미전사
//
//  Created by HOONHA CHOI on 2021/07/13.
//

import Foundation
// MARK: 개미전사
let num = Int(readLine()!)!
let store = readLine()!.split(separator: " ").map { Int(String($0))! }

var d = Array.init(repeating: 0, count: num)

d[0] = store[0]
d[1] = max(store[0], store[1])
for i in 2..<num {
    d[i] = max(d[i-1], d[i-2] + store[i])
}
print(d.max()!)
