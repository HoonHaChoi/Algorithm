//
//  main.swift
//  House Robber
//
//  Created by HOONHA CHOI on 2021/08/29.
//

import Foundation

// MARK: House Robber
func rob(_ nums: [Int]) -> Int {
       
    var d: [Int] = .init(repeating: 0, count: 101)
    
    if nums.count == 1 {
        return nums[0]
    } else if nums.count == 2 {
        return max(nums[0], nums[1])
    } else if nums.count == 3 {
        return max(nums[0]+nums[2], nums[1])
    }
    
    d[0] = nums[0]
    d[1] = max(nums[0], nums[1])
    d[2] = max(nums[0]+nums[2], nums[1])
    
    for i in 3..<nums.count {
        d[i] = max(d[i-2]+nums[i], d[i-1])
    }
    return d[nums.count-1]
}
print(rob([1,2,3,1]))
print(rob([2,7,9,3,1]))
print(rob([2,1,1,2]))
