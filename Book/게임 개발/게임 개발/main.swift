//
//  main.swift
//  게임 개발
//
//  Created by HOONHA CHOI on 2021/07/05.
//

import Foundation

// MARK: 게임 개발
let mapSize = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = mapSize[0]
let m = mapSize[1]

var visit: [[Int]] = .init(repeating: .init(repeating: 0, count: m), count: n)
let coord = readLine()!.split(separator: " ").map { Int(String($0))! }

var x = coord[0]
var y = coord[1]
var direct = coord[2]

var arr: [[Int]] = []
for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map { Int(String($0))! })
}

visit[x][y] = 1

func turn() {
    direct -= 1
    if direct == -1 {
        direct = 3
    }
}

let leftX = [-1,0,1,0]
let leftY = [0,-1,0,1]
var countxy = 1

while true {
    
    if arr[y + leftY[direct]][x + leftX[direct]] == 1 ||
        visit[y + leftY[direct]][x + leftX[direct]] == 1 {
        turn()
    } else {
        x += leftX[direct]
        y += leftY[direct]
        visit[y][x] = 1
        countxy += 1
    }

    if (arr[y][x+1] == 1 || visit[y][x+1] == 1) &&
        (arr[y][x-1] == 1 || visit[y][x-1] == 1) &&
        (arr[y-1][x] == 1 || visit[y-1][x] == 1) &&
        (arr[y+1][x] == 1 || visit[y+1][x] == 1) {
        
        if arr[y - leftY[direct]][x - leftX[direct]] == 1 {
            break
        }
        x -= leftX[direct]
        y -= leftY[direct]
    }
    
}
print(countxy)
