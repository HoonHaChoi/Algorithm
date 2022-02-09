//
//  main.swift
//  계단오르기-2579
//
//  Created by HOONHA CHOI on 2022/02/09.
//

import Foundation

struct UpTheStairs {
    let n: Int
    let stair: [Int]
    
    var d: [Int] = []
    mutating func solution() {
        d = .init(repeating: 0, count: n+1)
        
        if n <= 0 {
            print(0)
            return
        } else if n == 1{
            d[0] = stair[0]
            print(d[n-1])
            return
        }else if n == 2 {
            d[0] = stair[0]
            d[1] = max(stair[0]+stair[1], stair[1])
            print(d[n-1])
            return
        }
        else if n == 3 {
            d[0] = stair[0]
            d[1] = max(stair[0]+stair[1], stair[1])
            d[2] = max(stair[0]+stair[2], stair[1]+stair[2])
            print(d[n-1])
            return
        } else {

            d[0] = stair[0]
            d[1] = max(stair[0]+stair[1], stair[1])
            d[2] = max(stair[0]+stair[2], stair[1]+stair[2])
            
        for i in 3..<n {
            d[i] = max(d[i-2]+stair[i], stair[i-1]+stair[i]+d[i-3])
        }
        print(d[n-1])
        }
    }
}


let input = Int(readLine()!)!
var arr: [Int] = []
for _ in 0..<input {
    arr.append(Int(readLine()!)!)
}

var uts = UpTheStairs(n: input, stair: arr)
uts.solution()
