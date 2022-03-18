//
//  main.swift
//  냉동 식품-14625
//
//  Created by HOONHA CHOI on 2022/03/18.
//

import Foundation

struct IceFood {
    var H: Int
    var M: Int
    
    let eH: Int
    let eM: Int
    
    let n: Int
    var cnt = 0
    
    mutating func solution() {
        while true {
            
            if H / 10 == n || M / 10 == n ||
               H % 10 == n || M % 10 == n {
                cnt += 1
            }
            
            if H == eH && M == eM {
                break
            }
            
            if M == 59 {
                if H == 23 {
                    H = 0
                } else {
                    H += 1
                }
                M = 0
            } else {
                M += 1
            }
            
        }
        print(cnt)
    }
    
}

let start = readLine()!.split(separator: " ").map { Int(String($0))! }
let end = readLine()!.split(separator: " ").map { Int(String($0))! }
var icef = IceFood(H: start[0], M: start[1], eH: end[0], eM: end[1], n: Int(readLine()!)!)
icef.solution()
