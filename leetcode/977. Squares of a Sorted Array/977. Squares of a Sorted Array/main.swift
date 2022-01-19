//
//  main.swift
//  977. Squares of a Sorted Array
//
//  Created by HOONHA CHOI on 2021/12/11.
//

import Foundation

func sortedSquares(_ nums: [Int]) -> [Int] {
    return nums.map { Int(pow(Double($0), 2)) }.sorted(by: <)
}

print(sortedSquares([-4,-1,0,3,10]))
