//
//  main.swift
//  Mini-Max Sum
//
//  Created by HOONHA CHOI on 2022/01/27.
//

import Foundation

func miniMaxSum(arr: [Int]) -> Void {
    var maxvalue = 0
    var minValue = 10000000000
    var sum = 0
    for i in 0..<arr.count {
        
        for j in 0..<arr.count {
            if i == j {
                continue
            }
            sum += arr[j]
        }
        maxvalue = max(sum, maxvalue)
        minValue = min(sum, minValue)
        sum = 0
    }
    print(minValue,maxvalue)
}
