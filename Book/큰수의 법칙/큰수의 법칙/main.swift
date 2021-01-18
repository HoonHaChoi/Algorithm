//
//  main.swift
//  큰수의 법칙
//
//  Created by HOONHA CHOI on 2021/01/18.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let arr = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted { $0 > $1}

print(input)
print(arr)
var count = 0
var sum = 0
for _ in 0..<input[1] {
    if count != 3 {
        sum += arr[0]
        count += 1
    } else {
        count = 0
        sum += arr[1]
    }
}
print(sum)

