//
//  main.swift
//  DiagonalDifference
//
//  Created by HOONHA CHOI on 2021/01/27.
//

import Foundation

var input = Int(readLine()!)!
var arr = [[Int]](repeating: [], count: input)

for i in 0..<input {
    arr[i] = readLine()!.split(separator: " ").map { Int(String($0))! }
}

func diagonalDifference(arr: [[Int]]) -> Int {
    var left = 0
    var right = 0
    var temp = arr.count-1
    for i in 0..<arr.count {
        left += arr[i][i]
        right += arr[i][temp]
        temp -= 1
    }
    return abs(left-right)
}
print(diagonalDifference(arr: arr))
