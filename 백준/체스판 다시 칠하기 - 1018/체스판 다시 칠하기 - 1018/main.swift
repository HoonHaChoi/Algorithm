//
//  main.swift
//  체스판 다시 칠하기 - 1018
//
//  Created by HOONHA CHOI on 2021/11/20.
//

import Foundation

// MARK: 체스판 다시 칠하기 - 1018
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let m = input[1]

var b = "B"
var w = "W"
var basicW: [[String]] = [
    ["W","B","W","B","W","B","W","B"],
    ["B","W","B","W","B","W","B","W"],
    ["W","B","W","B","W","B","W","B"],
    ["B","W","B","W","B","W","B","W"],
    ["W","B","W","B","W","B","W","B"],
    ["B","W","B","W","B","W","B","W"],
    ["W","B","W","B","W","B","W","B"],
    ["B","W","B","W","B","W","B","W"]
]
var basicB: [[String]] = [
    ["B","W","B","W","B","W","B","W"],
    ["W","B","W","B","W","B","W","B"],
    ["B","W","B","W","B","W","B","W"],
    ["W","B","W","B","W","B","W","B"],
    ["B","W","B","W","B","W","B","W"],
    ["W","B","W","B","W","B","W","B"],
    ["B","W","B","W","B","W","B","W"],
    ["W","B","W","B","W","B","W","B"],
]

var board: [[String]] = []
(0..<n).forEach { _ in
    board.append(readLine()!.map{ String($0)})
}

func checkB(_ x: Int, _ y: Int) -> Int {
    var cnt = 0
    for i in x..<x+8 {
        for j in y..<y+8 {
            if board[i][j] != basicB[i-x][j-y] {
                cnt += 1
            }
        }
    }
    return cnt
}

func checkW(_ x: Int, _ y: Int) -> Int {
    var cnt = 0
    for i in x..<x+8 {
        for j in y..<y+8 {
            if board[i][j] != basicW[i-x][j-y] {
                cnt += 1
            }
        }
    }
    return cnt
}

var result = 10000
for i in 0..<n {
    
    if i+7 >= n {
        break
    }
    for j in 0..<m {
        
        if j+7 >= m {
            break
        }
        result = min(result, min(checkB(i, j), checkW(i, j)))
    }
}
print(result)
