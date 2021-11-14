//
//  main.swift
//  이항 계수1 - 11050
//
//  Created by HOONHA CHOI on 2021/11/15.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }

let n = input[0] // 1 <= n <= 10
let k = input[1] // 0 <= k <= n


//메모리 초과
//func factorial(_ x: Int) -> Int {
//    if x == 1 {
//        return 1
//    }
//    return factorial(x-1) * x
//}
//print(factorial(n) / (factorial(n-k)*factorial(k)))

// 점화식
func bc(_ n: Int,_ k: Int) -> Int {
    var d:[[Int]] = .init(repeating: .init(repeating: 0, count: n+1), count: k+1)
    
    for i in 0...k {
        for j in i...n {
            if i == 0 || i == j {
                d[i][j] = 1
                continue
            }
            d[i][j] = d[i-1][j-1] + d[i][j-1]
        }
    }
    return d[k][n]

}
print(bc(n, k))
