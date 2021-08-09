//
//  main.swift
//  Gas Station
//
//  Created by HOONHA CHOI on 2021/08/09.
//

import Foundation
// MARK: Gas Station
func canCompleteCircuit(_ gas: [Int], _ cost: [Int]) -> Int {
    var gas = gas
    var cost = cost
    
    var sumResult = 0
    for i in 0..<gas.count {
        sumResult += gas[i] - cost[i]
    }
    
    if sumResult < 0 {
        return -1
    }
    for i in 0..<gas.count {
        var sum = 0
        for j in 0..<gas.count {
            sum += gas[j]-cost[j]
            if sum < 0 {
                break
            }
        }
        if sum >= 0 {
            sumResult = i
        }
        gas.append(gas.removeFirst())
        cost.append(cost.removeFirst())
    }
    return sumResult
}
