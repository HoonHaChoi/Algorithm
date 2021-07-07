//
//  main.swift
//  음료수 얼려 먹기
//
//  Created by HOONHA CHOI on 2021/07/07.
//

import Foundation
// MARK: 음료수 얼려 먹기
let n = Int(readLine()!)!
let m = Int(readLine()!)!

var iceMap: [[Int]] = [[]]
for _ in 0..<n {
    iceMap.append(readLine()!.map { Int(String($0))! })
}
iceMap.removeFirst()

@discardableResult
func dfs(x: Int,y: Int) -> Bool {
    
    if x < 0 || x > m-1 || y < 0 || y > n-1 {
        return false
    }
    
    if iceMap[y][x] == 0 {
        print(y,x)
        iceMap[y][x] = 1
        dfs(x: x + 1, y: y)
        dfs(x: x - 1, y: y)
        dfs(x: x, y: y - 1)
        dfs(x: x, y: y + 1)
        return true
    }
    return false
}

var drink = 0
for i in 0..<n {
    for j in 0..<m {
        if dfs(x: j, y: i) == true {
            drink += 1
        }
    }
}

print(drink)
