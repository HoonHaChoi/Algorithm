//
//  main.swift
//  N과 M(1)-15649
//
//  Created by HOONHA CHOI on 2022/02/05.
//

import Foundation

struct NandM1 {
    let n: Int
    let m: Int
    
    var ch: [Int] = []
    var a: [Int] = []
    mutating func solution() {
        ch = .init(repeating: 0, count: n+1)
        dfs(v: 0)
    }
    
    mutating func dfs(v: Int) {
        if v == m {
            a.forEach {
                print($0, separator: "", terminator: " ")
            }
            print()
        } else {
            for i in 1...n {
                if ch[i] == 0 {
                    ch[i] = 1
                    a.append(i)
                    dfs(v: v+1)
                    ch[i] = 0
                    a.popLast()
                }
            }
        }
    }
}

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
var nm1 = NandM1(n: input[0], m: input[1])
nm1.solution()
