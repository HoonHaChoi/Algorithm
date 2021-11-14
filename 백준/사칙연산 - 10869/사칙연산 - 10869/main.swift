//
//  main.swift
//  사칙연산 - 10869
//
//  Created by HOONHA CHOI on 2021/11/15.
//

import Foundation

// MARK: 사칙연산 - 10869
func solution(_ x: Int,_ y: Int) -> [Int] {
    var result: [Int] = []

    result.append(x+y)
    result.append(x-y)
    result.append(x*y)
    result.append(x/y)
    result.append(x%y)
    return result
}

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
solution(input[0], input[1]).forEach { print($0) }
