//
//  main.swift
//  N과 M(4)-15652
//
//  Created by HOONHA CHOI on 2022/02/08.
//

import Foundation

struct NandM4 {
    let n: Int
    let m: Int
    
    var arr: [Int] = []
    
    mutating func solution() {
        dfs(v: 0, s: 1)
    }
    
    mutating func dfs(v: Int,s: Int) {
        if v == m {
            arr.forEach {
                print($0, separator: "", terminator: " ")
            }
            print()
        } else {
            for i in s..<n+1 {
                arr.append(i)
                dfs(v: v+1, s: i)
                arr.removeLast()
            }
        }
    }
}

// MARK: N과 M(4)
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
var nm4 = NandM4(n: input[0], m: input[1])
nm4.solution()
