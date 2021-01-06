//
//  main.swift
//  분산처리-1009
//
//  Created by HOONHA CHOI on 2021/01/06.
//

import Foundation

let input = Int((readLine() ?? "")) ?? 0

for _ in 0..<input {
    let data = (readLine() ?? "").split(separator: " ").map { Int($0) ?? 0 }
    let a = data[0] % 10
    let b = data[1] % 4
    print(dataProcess(a, b))
}

func dataProcess(_ a : Int,_ b: Int) -> Int {
    if a == 0 {
        return 10
    }
    if b == 0 {
      return customPow(a, 4) % 10
    } else {
      return customPow(a, b) % 10
    }
}

func customPow(_ a : Int, _ b : Int) -> Int {
    var sum = 1
    for _ in 1...b {
        sum *= a
    }
    return sum
}

// 2, 3,7,8는 4씩 증가
// 4는 6,4 반복
// 5는 계속 5
// 6은 계속 6
// 7은 4씩 증가
// 9는 9,1 반복



