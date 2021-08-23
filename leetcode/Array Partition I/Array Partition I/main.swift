//
//  main.swift
//  Array Partition I
//
//  Created by HOONHA CHOI on 2021/08/23.
//

import Foundation
// MARK: Array Partition 1
func arrayPairSum(_ nums: [Int]) -> Int {
    return nums.sorted().enumerated().filter { index ,value in
        index % 2 == 0 ? true : false
    }.map { $0.element }.reduce(0, +)
}
print(arrayPairSum([1,4,3,2]))
print(arrayPairSum([6,2,6,5,1,2]))
