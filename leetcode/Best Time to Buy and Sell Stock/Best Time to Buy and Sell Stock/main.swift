//
//  main.swift
//  Best Time to Buy and Sell Stock
//
//  Created by HOONHA CHOI on 2021/08/28.
//

import Foundation

// MARK: Best Time to Buy and Sell Stock
func maxProfit(_ prices: [Int]) -> Int {
    
    var minValue = prices.max()!
    var value = 0

    for i in 0..<prices.count {
        if minValue > prices[i] {
            minValue = min(minValue, prices[i])
        } else {
            value = max(value, prices[i]-minValue)
        }
    }
    return value
}
print()
print(maxProfit([7,1,5,3,6,4]))
print(maxProfit([7,6,4,3,1]))
print(maxProfit([2,4,1]))
