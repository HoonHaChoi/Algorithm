//
//  main.swift
//  팰린더롬수 - 1259
//
//  Created by HOONHA CHOI on 2021/11/15.
//

import Foundation

// MARK: 팰린더롬수 - 1259
var inputList: [[String]] = [[]]
inputList.removeFirst()
let zeroString = "0"

while true {
    let input = readLine()!

    if input == zeroString {
        break
    }
    let strArr = input.map { String($0) }
    inputList.append(strArr)
}

func solution(_ arr: [[String]]) -> [Bool] {
    var result: [Bool] = []
    arr.forEach {
        let mid = $0.count / 2
        if $0.count == 1 {
            result.append(true)
        } else if $0.count % 2 == 0 {
            let left = $0[0...mid-1].map { String($0) }
            let right = $0[mid...].reversed().map { String($0) }
            result.append(left == right)
        } else {
            let left = $0[0..<mid].map { String($0) }
            let right = $0[(mid+1)...].reversed().map { String($0) }
            result.append(left == right)
        }
    }
    return result
}
solution(inputList).forEach {
    print($0 ? "yes" : "no")
}
