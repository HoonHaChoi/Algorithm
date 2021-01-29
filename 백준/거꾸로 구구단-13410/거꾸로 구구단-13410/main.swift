//
//  main.swift
//  거꾸로 구구단-13410
//
//  Created by HOONHA CHOI on 2021/01/29.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
var arr = [Int]()
for i in 1...input[1] {
    if input[0] * i < 10 {
        arr.append(input[0] * i)
    } else if (10 < input[0] * i) && (input[0] * i < 100) {
        let a = (input[0] * i) / 10
        let b = (input[0] * i) % 10
        arr.append(b * 10 + a)
    } else if (100 < input[0] * i) && (input[0] * i < 1000) {
        let a = (input[0] * i) % 10
        let b = (input[0] * i) / 10 % 10
        let c = (input[0] * i) / 100
        arr.append((a * 100) + (b * 10) + (c))
    } else if (1000 < input[0] * i) && (input[0] * i < 10000) {
        let a = (input[0] * i) % 10
        let b = (input[0] * i) / 10 % 10
        let c = (input[0] * i) / 100 % 10
        let d = (input[0] * i) / 1000
        arr.append((a * 1000) + (b * 100) + (c * 10) + d)
    } else if (10000 < input[0] * i) && (input[0] * i < 100000) {
        let a = (input[0] * i) % 10
        let b = (input[0] * i) / 10 % 10
        let c = (input[0] * i) / 100 % 10
        let d = (input[0] * i) / 1000 % 10
        let e = (input[0] * i) / 10000
        arr.append((a * 10000) + (b * 1000) + (c * 100) + (d * 10) + e)
    } else if (100000 < input[0] * i) && (input[0] * i < 1000000) {
        let a = (input[0] * i) % 10
        let b = (input[0] * i) / 10 % 10
        let c = (input[0] * i) / 100 % 10
        let d = (input[0] * i) / 1000 % 10
        let e = (input[0] * i) / 10000 % 10
        let f = (input[0] * i) / 100000
        arr.append((a * 100000) + (b * 10000) + (c * 1000) + (d * 100) + (e * 10) + f)
    }
}
//print(arr)
print(arr.max()!)
