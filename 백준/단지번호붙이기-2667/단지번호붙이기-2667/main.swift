//
//  main.swift
//  단지번호붙이기-2667
//
//  Created by HOONHA CHOI on 2022/01/20.
//

import Foundation

let n = Int(readLine()!)!
var arr: [[Int]] = []

for _ in 0..<n {
    arr.append(readLine()!.map { Int(String($0))! })
}

var ch = [[Int]].init(repeating: .init(repeating: 0, count: n),
                           count: n)

let lr = [1,-1,0,0]
let ud = [0,0,1,-1]
var cntArr: [Int] = []
var cnt = 0

func solution() {
    for i in 0..<n {
        for j in 0..<n {
            if arr[i][j] == 1 && ch[i][j] == 0 {
                cnt = 0
                dfs(i: i, j: j)
                cntArr.append(cnt)
            }
        }
    }
//        print(cntArr)
//        ch.forEach {
//            print($0)
//        }
    
    print(cntArr.count)
    cntArr.sorted().forEach {
        print($0)
    }
}

func dfs(i: Int, j: Int) {
    ch[i][j] = 1
    cnt += 1
    for k in 0...3 {
        let z = i+ud[k]
        let y = j+lr[k]
        
        if 0 <= z && z < n && 0 <= y && y < n {
            if arr[z][y] == 1 && ch[z][y] == 0 {
                dfs(i: z, j: y)
            }
        }
    }
}

solution()
