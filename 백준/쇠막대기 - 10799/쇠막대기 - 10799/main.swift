//
//  main.swift
//  쇠막대기 - 10799
//
//  Created by HOONHA CHOI on 2022/03/15.
//

import Foundation

struct IronBar {
    let bar: String
    
    var stack: [String] = []
    var cnt = 0
    
    mutating func solution() -> String {
        let bar = bar.map { String($0) }
        
        for i in 0..<bar.count {
            if bar[i] == "(" {
                stack.append(bar[i])
            } else {
                stack.removeLast()
                
                if bar[i-1] == "(" {
                    cnt += stack.count
                } else {
                    cnt += 1
                }
            }
        }
        return "\(cnt)"
    }
}

var input = readLine()!
var ironbar = IronBar(bar: input)
print(ironbar.solution())
