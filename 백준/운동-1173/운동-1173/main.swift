//
//  main.swift
//  운동-1173
//
//  Created by HOONHA CHOI on 2021/01/12.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = input[0]
var basicM = input[1]
var m = input[1]
let M = input[2]
let T = input[3]
let R = input[4]

var workout = 0
var time = 0
if m+T > M || m == M {
    print(-1)
} else {
    
    while true {
        
        if workout == N {
            break
        }
        
        if m+T <= M {
            m += T
            workout += 1
        } else if m-R >= basicM {
            m -= R
        }
        else {
            m = basicM
        }
        
        time += 1
    }
    print(time)
}
