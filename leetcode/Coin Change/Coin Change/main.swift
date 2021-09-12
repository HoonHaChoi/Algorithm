//
//  main.swift
//  Coin Change
//
//  Created by HOONHA CHOI on 2021/09/12.
//

import Foundation

// MARK: Coin Change
func coinChange(_ coins: [Int], _ amount: Int) -> Int {
    
    if amount == 0 {
        return 0
    }
    
    var d: [Int] = .init(repeating: amount+1, count: amount+1)
     
    d[0] = 0
    
    for i in 1...amount {
        for j in coins where j <= i {
            d[i] = min(d[i], 1+d[i-j])
        }
    }
    return d[amount] == amount+1 ? -1 : d[amount]
}

print(coinChange([1,2,5], 11))
print(coinChange([2], 3))
print(coinChange([1], 0))
print(coinChange([1], 2))
print(coinChange([2], 4))
