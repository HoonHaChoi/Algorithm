//
//  main.swift
//  N과 M(2)-15650
//
//  Created by HOONHA CHOI on 2022/02/06.
//

import Foundation

struct NandM2 {
    let n: Int
    let m: Int
    
    var ch: [Int] = []
    var arr: [Int] = []
    
    mutating func solution() {
        ch = .init(repeating: 0, count: n+1)
        dfs(v: 0, s: 1)
    }
    
    mutating func dfs(v: Int, s: Int) {
        if v == m {
            arr.forEach {
                print($0, separator: "", terminator: " ")
            }
            print()
        } else {
            for i in s..<n+1 {
                if ch[i] == 0 {
                    ch[i] = 1
                    arr.append(i)
                    dfs(v: v+1, s: i+1)
                    ch[i] = 0
                    arr.removeLast()
                }
            }
        }
    }
}

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
var nm2 = NandM2(n: input[0], m: input[1])
nm2.solution()
