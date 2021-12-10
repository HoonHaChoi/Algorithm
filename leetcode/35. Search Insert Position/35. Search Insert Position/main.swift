//
//  main.swift
//  35. Search Insert Position
//
//  Created by HOONHA CHOI on 2021/12/10.
//

import Foundation

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    var s = 0
    var e = nums.count-1
    
    while s<=e {
        let m = (s+e)/2
        
        if nums[m] == target {
            return m
        } else if nums[m] > target {
            e = m-1
        } else {
            s = m+1
        }
    }
    return s
}

//let nums = [1,3,5,6], target = 5
//print(searchInsert(nums, target))
print(searchInsert([1,3,5,6], 2))
print(searchInsert([1,3,5,6], 5))
print(searchInsert([1,3,5,6], 7))
