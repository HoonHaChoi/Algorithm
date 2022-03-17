//
//  main.swift
//  동전 2-2294
//
//  Created by HOONHA CHOI on 2022/03/17.
//

import Foundation

struct ExchangeCoins {
    let n: Int
    let coins: [Int]
    let amount: Int
    
    var d: [Int] = []
    
    mutating func solution() -> String {
        d = .init(repeating: 1000000, count: amount+1)
        
        d[0] = 0
        coins.forEach { c in
            if amount > c {
                for i in c...amount {
                    d[i] = min(d[i], d[i - c] + 1)
                }
            }
        }
        
        if d[amount] == 1000000 {
            return String(-1)
        }
        
        return String(d[amount])
    }
}

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let value = input[1]
var arr: [Int] = []
for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}
var ec = ExchangeCoins(n: n, coins: arr, amount: value)
print(ec.solution())
