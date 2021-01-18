//
//  main.swift
//  1일 될 때까지
//
//  Created by HOONHA CHOI on 2021/01/18.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
var n = input[0]
var k = input[1]
var c = 0
while n != 1 {
    if n % k == 0 {
        n /= k
        c += 1
    } else {
        n -= 1
        c += 1
    }
}
print(c)
