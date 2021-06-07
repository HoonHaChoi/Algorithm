//
//  main.swift
//  주유소-13305
//
//  Created by HOONHA CHOI on 2021/06/07.
//

import Foundation

// MARK: 주유소
let number = Int(readLine()!)!
var distance = readLine()!.split(separator: " ").map { Int(String($0))! }
var store = readLine()!.split(separator: " ").map { Int(String($0))! }

var result = 0
var temp = store[0]

for i in 0..<store.count-1 {
    if temp > store[i] {
        temp = store[i]
    }
    result += temp * distance[i]
}
print(result)
