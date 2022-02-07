//
//  main.swift
//  N과 M(3)-15651
//
//  Created by HOONHA CHOI on 2022/02/07.
//

import Foundation

struct NandM3 {
    let n: Int
    let m: Int
    
    var a: [Int] = []
    var str = ""
    
    mutating func solution() {
        dfs(v: 0)
        print(str)
    }
    
    mutating func dfs(v: Int) {
        if v == m {
//            a.forEach {
//                print($0, separator: "", terminator: " ")
//            }
//            print()
           str += a.map { String($0) }.joined(separator: " ")
           str += "\n"
           return
        } else {
            for i in 1...n {
                a.append(i)
                dfs(v: v+1)
                a.removeLast()
            }
        }
    }
}

// MARK: N과 M(3)
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
var nm3 = NandM3(n: input[0], m: input[1])
nm3.solution()
