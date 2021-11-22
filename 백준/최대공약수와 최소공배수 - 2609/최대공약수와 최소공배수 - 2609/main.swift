//
//  main.swift
//  최대공약수와 최소공배수 - 2609
//
//  Created by HOONHA CHOI on 2021/11/22.
//

import Foundation
// MARK: 최대공약수와 최소공배수 - 2609
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let a = input[0]
let b = input[1]

func gcd(_ x: Int,_ y: Int) -> Int {
    let result = x % y
    return result == 0 ? min(x, y) : gcd(y, result)
}

print(gcd(a, b))
print((a*b) / gcd(a, b))
