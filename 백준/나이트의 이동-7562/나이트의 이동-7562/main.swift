//
//  main.swift
//  나이트의 이동-7562
//
//  Created by HOONHA CHOI on 2022/02/10.
//

import Foundation

struct NightIsMove {
    let n: Int
    let currnet: [Int]
    let arrive: [Int]
    
    let dx = [+2, +1, -1, -2, -2, -1, +1, +2]
    let dy = [+1, +2, +2, +1, -1, -2, -2, -1]
    
    var v: [[Int]] = []
    
    mutating func solution() {
        v = .init(repeating: .init(repeating: 0, count: n), count: n)
        v[currnet[0]][currnet[1]] = 0
        dfs(x: currnet[0], y: currnet[1])
        print(v[arrive[0]][arrive[1]])
    }
    
    mutating func dfs(x: Int, y: Int){
        for i in 0..<8 {
            if x == arrive[0] && y == arrive[1] {
                continue
            }
            let a = x + dx[i]
            let b = y + dy[i]
            
            if 0 <= a && a < n && 0 <= b && b < n {
                if v[a][b] == 0 || v[a][b] > v[x][y] + 1 {
                    v[a][b] = v[x][y] + 1
                    dfs(x: a, y: b)
                }
            }
        }
    }
}

var nim = NightIsMove(n: 8, currnet: [0,0], arrive: [7,0])
//var nim = NightIsMove(n: 100, currnet: [0,0], arrive: [30,50])
nim.solution()
