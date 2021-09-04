//
//  main.swift
//  Top K Frequent Elements
//
//  Created by HOONHA CHOI on 2021/09/04.
//

import Foundation

// MARK: Top K Frequent Elements
func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
    var dic: [Int: Int] = [:]
    
    nums.forEach {
        if let _ = dic[$0] {
            dic[$0]! += 1
        } else {
            dic[$0] = 1
        }
    }
    let c = dic.sorted { $0.value > $1.value }
    return c[0..<k].map { $0.key }
}

print(topKFrequent([1,1,1,2,2,3], 2))
//print(topKFrequent([1], 1))
print(topKFrequent([1,2], 2))
